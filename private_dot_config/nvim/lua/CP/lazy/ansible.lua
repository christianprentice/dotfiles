return {
    "pearofducks/ansible-vim",
    config = function()
        require('ansible').setup() -- Enables tree-sitter highlighting
    end
}
