pragma solidity ^0.8.0;
contract Test17 {
    uint16[1][1] storage;
    function set_storage(uint16 new_storage)
        public
    {
        storage[0][0] = new_storage;
    }
}


pragma solidity ^0.8.0;
contract Test18 {
    uint16[1][1] dyn_mem;
    function set_mem(uint16 new_mem)
    {
        dyn_mem[0][0] = new_mem;
    }
}

pragma solidity ^0.8.0;
contract Test19 {
    uint16[1][1] dyn_mem;
    uint32[1][1][1][1] dyn_mem2;
    constructor()
    {
        dyn_mem[0][0] = 1;
    }
    function get_mem23(uint16 addr, uint256 mem0, uint256 mem1, uint256 mem2, uint256 mem3) public view returns (uint256) {
        return dyn_mem2[addr][mem0][mem1][mem2];
    }
    function set_mem23(uint16 addr, uint256 mem0, uint256 mem1, uint256 mem2, uint256 new_mem3) public {
        dyn_mem2[addr][mem0][mem1][mem2] = new_mem3;
    }
    function get_mem2(uint16 addr, uint256 mem0, uint256 mem1) public view returns (uint256) {
        return dyn_mem[addr][mem0];
    }
}
