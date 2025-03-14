pragma solidity ^0.8.0;
contract Modification2 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 2;
        b = _b;
    }
}
contract Modification3 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 3;
        b = _b;
    }
}
