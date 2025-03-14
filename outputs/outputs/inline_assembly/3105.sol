pragma solidity ^0.8.0;
contract C {
    bytes32 a;
    bytes32 b;
    uint a_;
    uint b_;
    constructor(bytes32 _a, bytes32 _b, uint _a_, uint _b_) public {
        assembly {
            {
                a := _a
                b := _b
                a_ := mload(0x40){0, 0x1}
                b_ := mload(0x60) {0, 0x2}
                mstore(0x40) (a)
                mstore(0x60) (b)
            }
        }
    }
}
