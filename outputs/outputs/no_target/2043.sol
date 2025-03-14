pragma solidity ^0.8.0;
contract Modification {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 2;
        b = _b;
    }
}
contract ModificationRevert1 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 3;
        string memory _string;
        assembly {
            _string := add(_b, 170)
        }
        b = _string;
    }
}
contract ModificationRevert2 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 4;
        a = a + 170;
        b = _b;
    }
}
contract ModificationRevert3 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 5;
        string memory _string = "abcd";
    }
}
