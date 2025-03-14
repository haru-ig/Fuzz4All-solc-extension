pragma solidity ^0.8.0;
library library {
    function set_M(uint256 _M) public pure {
        assembly {
            M := _M
        }
    }
}
contract generated {
    uint256 constant public M = 3000000000000000000000000000000000;
    uint256 constant public M1 = 30000000000000000000000000000000;
    uint256 constant public N = 300000000000000000000000000000000;
    uint256 constant public N1 = 3000000000000000000000000000000000;
    uint256 constant public B = 26;
    uint256 constant public B1 = 25;
    uint256 constant public C = 24;
    uint256 constant public C1 = 23;
    uint256 constant public D = 22;
    uint256 constant public D1 = 21;
    uint256 constant public C8 = 14;
    uint256 constant public C16 = 7;
    uint256 constant public D8 = 5;
    uint256 constant public D16 = 2;
}
/* Please create and test a program with
