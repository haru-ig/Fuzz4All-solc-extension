pragma solidity ^0.8.0;
contract Solidity8To16 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    uint8 public prevB;
    constructor() public {
        uint8 temp = 3;
        a = 3;
        b = temp;
        prevB = temp;
        maxA = temp;
    }
    fallback() external payable {
        a = a + a;
        a = a + a;
        b = b + b;
        b = b + b;
    }
}

pragma solidity ^0.8.0;
library Solidity16To17 {


    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    uint8 public prevB;
    constructor() public {
        uint8 temp = 4;
        a = 4;
        b = temp;
        maxA = temp;
        prevB = b;
    }
    fallback() external{
        uint8 temp = 4;
        a = a + a;
        a = a + a;
        b = b + b;
        b = b + b;
    }
}
