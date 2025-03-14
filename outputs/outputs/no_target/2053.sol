pragma solidity ^0.8.0;
contract Modification2 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 6;
        b = _b;
    }
    function g() public pure returns (uint256) {
        uint256 _a = 0x7888173a92cf913b1d09cfdc9a561399d6cf76f1663300a988fa499d00d4ec2;
        uint256 _b = 1;
        return _a div _b;
    }
}
contract ModificationRevert4 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 7;
        a = div(uint256(0), 0);
        b = _b;
    }

    function div(uint256 a, uint256 b) public pure returns (uint256) {
        if (a == 0)
            return 0;
        assembly {
            let result := div(a, b)
            returndatacopy(0x0, 0x20, 32)
            return(mload(0x20))
        }
    }
}
contract ModificationRevert5 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 8;
        string memory _string0;
        uint256 _string1;
        uint256 __gap__ = 25;
    }
}
contract ModificationRevert6 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 9;
        string memory _string;
        uint256 _string1;
        uint256 __gap__ = 31;
    }
}
contract ModificationRevert7 {
    uint256 public a;
    string public b
