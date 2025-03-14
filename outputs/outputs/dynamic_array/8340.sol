pragma solidity ^0.8.0;
contract SemanticEqualVersion {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    constructor(uint8 a_, uint8 b_) public {

        a = a_;
        b = b_;
        maxA = 1;
    }
    fallback() external payable {
        a = a - 1;


        b = b - 3;
        maxA = maxA - 1;
    }
}
