pragma solidity ^0.8.0;
contract ModificationRevert6 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        b = "abcde";
    }
}
contract ModificationRevert7 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 0;
        a = 0xFEED;
        b = _b;
    }
}
contract ModificationRevert8 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 255;
        a = a - 1;
        b = _b;
    }
}
contract ModificationFinal {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 0;
        a = 0xFEED;
    }
}
