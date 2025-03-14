pragma solidity ^0.8.0;
contract Test16 {
    uint16[1] mem;
    function set_mem(uint16 new_mem)
        public
    {
        mem[0] = new_mem;
    }
}
contract Test16 {
    uint16[1][1] mem;
    function set_mem(uint16 new_mem) external
    {
        mem[0][0] = new_mem;
    }
}
contract Test16 {
    uint16[1][1] mem;
    function set_mem(uint16 new_mem) public
    {
        mem[0][0] = new_mem;
    }
}
contract Test16 {
    uint16[1][1] mem;
    function set_mem(uint16[] memory new_mem) public
    {
        mem[0][0] = new_mem[0];
    }
}
contract Test16 {
    uint16[1][1] mem;
    function set_mem(uint16[] memory new_mem) external
    {
        mem[0][0] = new_mem[0];
    }
}
contract Test16 {
    uint16[1][1] mem;
    function set_mem(uint16[] memory new_mem) public
    {
        mem[0][0] = new_mem[0];
    }
}

pragma solidity ^0.8.0;
struct Test17 {
    uint16 data;
}
contract Test17 {
    Test17[10] myarray;
    function set_data(uint7 _data) public
    {
        myarray[0].data = _data;
    }
}
contract Test17 {
    Test17[10] myarray;
    function set_data(uint7 _data) internal
    {
        myarray[0].data = _data;
    }
}
contract Test17 {
    Test17[10] myarray;
    function set_data(uint7 _data) public
    {
        myarray[0].data = _data;
    }
}
contract Test17 {
    Test17[10] myarray;
    function set_data(uint7 _data) internal
    {
        myarray[0].data = _data;
    }
}
