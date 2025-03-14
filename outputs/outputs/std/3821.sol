pragma solidity ^0.8.0;
contract MemoryContracts {
    uint[] public memory_int;
    uint256[] public memory_uint;
    uint256 max = 2 ** 255 - 1;
    constructor () {
        memory_uint = [max];
        uint256 length = memory_uint.length;
        uint256[] memory mem = memory_uint;
        memory_int = [];
        uint256 i;
        for (i = 0; i < length; i++) {
            memory_int.push(multiply(1, i));
        }
    }
    uint256[] public memory_uint2;
    uint256 min = 1;
    constructor () {
        uint256[] memory mem2 = memory_uint2;
        min = mem2[0];
    }
    function getAddr() public pure returns (address) {
        return address(0x0000000000000000000000000000000);
    }
}
