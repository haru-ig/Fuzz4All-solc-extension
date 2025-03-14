pragma solidity ^0.8.0;
contract Mutated1 {
    uint64 public a;
    uint64[8] public b;
    uint256 c;
    require (
        a <= 16,
        "Failed to create contract"
    );
    constructor (
        uint64 _value1,
        uint64[8] memory _value2,
        uint256 _value3
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    modifier only {
        if (address(this)!= msg.sender) {
            c = c + 10;
        }
        _;
    }
}
