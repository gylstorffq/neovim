return {
    'michaelb/sniprun',
    build = 'bash ./install.sh',
    keys = {
        {'f', '<Plug>SnipRun', mode='v',{silent = true}, desc="SnipRun"},
        {'<leader>s', '<Plug>SnipRunOperator', {silent = true}, desc="SnipRunOperator"},
        {'<leader>ss', '<Plug>SnipRun', {silent = true}, desc="SnipRun"}
    },
    config = function()
        require('sniprun').setup()
    end
}
