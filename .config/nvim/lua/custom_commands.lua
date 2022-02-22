M = {}

function M.smart_ZZ()
  local bufname_is_empty = vim.fn.bufname() == ''
  local buffer_is_empty = vim.fn.line('$') == 1 and vim.fn.getline(1) == ''
  local is_readonly = vim.o.readonly == true

  if(bufname_is_empty)
  then
    if(buffer_is_empty)
    then
      if(M.is_last_buffer())
      then
        print('buffer has empty name, no contents, and is the last buffer besides NvimTree, close vim without saving buffer')
        vim.cmd('x')
      else
        print('buffer has empty name, no contents, but there are other buffers open. close buffer without saving')
        vim.cmd('bwipeout')
      end
    else
      print('buffer has no name. name file with :w [filename] or abandon with :bd!')
    end
  else
    if(is_readonly)
    then
      -- confirmation isn't really necessary since readonly files aren't editable, so no work can be lost
      -- local readonly_choice = vim.fn.confirm('buffer is read only, close without saving?', '&Y\n&n', 1)
      -- if(readonly_choice == 1)
      -- then
      --   vim.cmd('bwipeout')
      -- end
      vim.cmd('bwipeout')
    else
      print('buffer is writable, save and close')
      vim.cmd('w | bwipeout')
    end
  end

  -- return 1
end

function M.is_last_buffer()
  local number_of_buffers = vim.fn.bufnr('$')

  local buffers = vim.fn.range(1, number_of_buffers)
  
  local listed_buffers = {}
  local unlisted_buffers = {}

  for _, buffer in ipairs(buffers)
  do
    local buffer_info = vim.fn.getbufinfo(buffer)

    --if table is not empty
    if(next(buffer_info) ~= nil)
    then
      if(buffer_info[1]['listed'] == 1)
      then
        -- if buffer_info table is not empty, the buffer exists
        -- if buffer has a listed value of 1, that means its a listed buffer
        table.insert(listed_buffers, buffer)
      else
        table.insert(unlisted_buffers, buffer)
      end
    end
  end

  -- is_last_buffer() is only called when deciding whether or not to close vim
  -- if an unlisted buffer such as a help file is the last buffer, smart_ZZ() will close it before
  -- calling is_last_buffer() to try and figure out if it should close vim
  -- therefor, the only situation we have to check for is if there are other listed buffers open
  if(#unlisted_buffers == 1 and #listed_buffers == 1 and vim.fn.bufname(unlisted_buffers[1]) == 'NvimTree')
  then
    -- print('NvimTree is the only unlisted buffer')
    return true
  else
    return false
  end
end

function M.split_string(input_string, delimeter)
  if delimeter == nil then
    delimeter = '\n'
  end
  local t={}
  for string in string.gmatch(input_string, '([^' .. delimeter .. ']+)') do
    table.insert(t, string)
  end
  return t
end

function M.c_compile(size)
  -- creates a binary with the same name as the file instead of a.out
  -- local file_name = vim.fn.fnamemodify(vim.fn.expand('%'), ':t:r');

  -- local cmd = 
  --   'gcc ' .. vim.fn.expand('%') .. ' -o ' .. file_name .. '; ' ..
  --   'echo ""; ' ..
  --   'echo "--(compiler ↑)--(program ↓)--"; ' ..
  --   'echo ""; ' ..
  --   './' .. file_name

  -- -- vim.fn.termopen(cmd)
  local cmd = 
    -- 'rm a.out; ' ..
    'gcc ' .. vim.fn.expand('%') .. '; ' ..
    -- 'make; ' ..
    'echo ""; ' ..
    'echo "--(compiler ↑)--(program ↓)--"; ' ..
    'echo ""; ' ..
    './a.out'
    -- './' .. vim.fn.fnamemodify(vim.fn.expand('%'), ':t:r') .. '_program'

  if(size == 'full')
  then
    vim.cmd([[execute 'terminal ]] .. cmd .. [[' | set buflisted | only]])
  elseif(size == 'split')
  then
    vim.cmd([[split | execute 'terminal ]] .. cmd .. [[']])
  elseif(size == 'vsplit')
  then
    vim.cmd([[vsplit | execute 'terminal ]] .. cmd .. [[']])
  end
end

return M






