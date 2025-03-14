pragma solidity ^0.8.0;
contract Test8 {
    uint256 _value = 321;
    uint256[] _mem = new uint256[](100);
    function check(address a) public {
        uint8 a;
        a = 0;
        _mem[0] = 1;
        a = 1;
        _mem[0] = 27;
        a = 2;
        _mem[0] = 19;
    }
}

function changeArraySize(struct Storage memory s) public {
        s.mem[0] = s.mem[0] + 1;
    }

pragma solidity ^0.8.0;
contract Test9 {
    uint256[] public mem;
    function getStorage(uint256 n) public returns (struct Storage memory) {
        calldata calldata_mem;
        calldata_mem = abi.encodePacked(n);
        mem[n] = abi.decode(calldata_mem, (struct Storage));
    }
    function test() public {
        Storage memory s = Storage();
        s.mem = new uint256[](100);
        changeArraySize(s);
    }
}

contract Test10 {

    uint8[] public mem;
    function calldata_mem(uint256 v) public returns (uint256 c) {
        c = v ** 2;
    }
    function calldata_mem_array(uint256[] memory a) public {
        mem[0] = v ** 4;
    }
    function test() public {
        calldata_mem(mem[0]);
        calldata_mem(42);
        calldata_mem(null);
        uint256[] memory arr = new uint256[](5);
        calldata_mem_array(arr);
        struct Storage memory s = Storage();
        s.mem = new uint256[](5);
        s.mem[0] = 0;
        calldata_mem(s.mem[0]);
    }
}

contract Test11 {
    uint256[] public mem;
    function getStorage(uint256 n) public returns (struct Storage memory) {
        mem[n] = 0;
        return mem[n];
