pragma solidity ^0.8.0;
contract Bap {
    uint256 public a;
}

contract G {
    function f() public pure returns (uint) {
        return 0x1234567890123456789012345678901234567890123;
    }
}

contract Gee {
    function h() public pure returns (uint) {
        return 0x2345678901234567890123456789012345678901234;
    }
}

contract T {
    string[] values;
    Baz2 memory baz;
    Bap memory bap;
    G memory g;
    Gee memory gee;
}
