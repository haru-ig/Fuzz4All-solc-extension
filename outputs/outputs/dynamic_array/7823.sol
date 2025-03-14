pragma solidity ^0.8.0;
contract Test13 {
    bool _flag = false;
    bool _mem = true;
    function set_mem(bool new_mem)
        public
    {
        _flag = new_mem;
    }
}

pragma solidity ^0.8.0;
contract Test13 {
    uint8[] _arr;
    uint8 _mem;
    function set_mem(uint8[] memory new_mem_arr)
        public
    {
        _mem = bytes_comp(_mem, 1);
        _mem = bytes_comp(_mem, 0);
        _arr = new_mem_arr;
    }
}
