pragma solidity ^0.8.0;
contract Modification {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 2;
        b = _b;
    }
}
contract ModificationRevert4 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 3;
        uint256 _uint256;
        assembly {
            _uint256 := add(_b, 100)
        }
        b = _b;
        a += _uint256;
    }
}
contract ModificationRevert5 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 4;
        string memory _string = "abcd";
        uint256 _uint256= _uint256 + 1;
        a = 4;
        b = _b;
    }
}
contract ModificationRevert6 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 5;
        uint256 _uint256= _uint256 - 1;
        b = _b;
        a ++ = _uint256;
    }
}
