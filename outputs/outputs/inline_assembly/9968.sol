pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    constructor() public {
        value = uint256(0xACEDB0FD) >> 1;
    }
    function test(uint8 x) public {
        uint32 tmp = uint256(x >> 1);
            value = uint256(x << tmp);
    }
}
