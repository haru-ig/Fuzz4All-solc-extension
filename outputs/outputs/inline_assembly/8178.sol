pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    uint256 public b;
    constructor (uint256 _a, uint256 _b) public {
        a = _a;
        b = _b;
        uint256 x = a * b * 10;
        a = a + x;
        b = b + x;
    }
}

pragma solidity ^0.8.0;
contract Mutated {


    uint256 public a;
    uint256 public b;
    constructor (uint256 _a, uint256 _b) public {

        a = _a * 10;

        b = a * 2;
        uint256 x = a * b * 10;
        a = a + x;
        b = b + x;
    }
}
