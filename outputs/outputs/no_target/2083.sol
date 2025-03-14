pragma solidity ^0.8.0;
contract SemanticChange {
    uint256 public x;
    uint256 public a;
    uint256 public b;
    uint256 constant c = a + b * uint256(type(uint256).max);

    constructor() public {
        x = (a - b) * c;
    }
}
uint256 x;
uint256 a;
uint256 b;
uint256 constant c = a + b * uint256(type(uint256).max);
constructor(){
    x = (a - b) * c;
}
