pragma solidity ^0.8.0;
contract ModificationMutate1 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 6;
        b = _b;
    }
}
contract ModificationMutate2 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 7;
        a = a + 170;
        b = _b;
    }
}
contract ModificationMutate3 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 8;
        a = a + a;
        b = _b;
    }
}
contract ModificationMutate4 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 9;
        a = -170;
        b = _b;
    }
}
contract ModificationMutate5 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 10;
        b = _b;
    }
}
