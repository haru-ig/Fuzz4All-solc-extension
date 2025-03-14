pragma solidity ^0.8.0;
contract Solidity0To7 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    constructor() public {
        a = 4;
        b = 1;
        maxA = 3;
    }
    fallback() public {
        a = a + 1;
        b = b + 50;
        maxA = maxA + 71;
    }
}

contract Solidity0To7 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    constructor() public {
        a = 4;
        b = 1;
        maxA = 3;
    }
    fallback() external payable {
        a = a + 1;
        b = b + 2;
        maxA = maxA + 2;
    }
}
