pragma solidity ^0.8.0;
contract New {
    function get(uint a, uint b) public view returns (uint) {
        return a + (b + 10);
    }
}

contract Test {
    function test1() public returns (uint) {
        Old old;
        bytes memory data = abi.encode(old.get.value(42)({ value: 1, data: "0x" }));
        uint[3] memory vars = abi.decode(data, (uint[3]));
        assert(vars[0] == 1);
        assert(vars[1] == 10);
        assert(vars[2] == 7);
    }
}
