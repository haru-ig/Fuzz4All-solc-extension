pragma solidity ^0.8.0;
library A {
    bytes1 public constant _byte = 1_1;
    uint public constant _uint = 16;
    constructor(uint) public {
    }
    modifier onlyCaller() view {
        uint _a = 1_2;
        uint _b = 1_3;
        uint _c = 5;
        uint _d = (_a + _b + _c);
        _;
    }
    modifier onlyAddress(address) pure {
        uint _a = 10_3;
        uint _b = 1_3;
        uint _c = (_a + _b);
        address _d = (msg.sender);
    }
    uint constant _uint32 = 16**60;
    uint constant _uint64 = 1_000_000_000;
    function mutated(uint) public pure returns (uint) {
        return (((uint(uint(uint(uint(_uint32))) * 16) * 60) / _uint32));
    }
}
