pragma solidity ^0.8.0;
contract ModificationRevert3Mutated1 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 5;
        string memory _string = _b+"cd";
        b = _string;
    }
}
contract ModificationRevert3Mutated2 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 5;
        a = a + 200;
        b = _b;
    }
}
