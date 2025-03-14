pragma solidity ^0.8.0;
contract A {
    uint256 public arrayVariable;
    uint256[3] public arrayVariable2;
    int256 public a;
    string public name;
    constructor() public {
        name = "a";
        arrayVariable=30;
        arrayVariable2=[-5, 3, -1];

        a=+a;
    }
}
