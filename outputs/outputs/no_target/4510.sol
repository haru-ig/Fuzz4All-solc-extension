pragma solidity ^0.8.0;
contract D {
    uint256 constant F = 9;
    uint256 x = F;

    uint256 constant G = 44;
    uint256 y = G;

    uint256 constant A = 22;
    uint256 a = A;

    uint256 constant B = 42;
    uint256 b = B;

    bool b1a = true;
    bool b2a = false;

    function f() public view returns (bool ret) {

        ret = b1a && (x == 9) && b2a;
        return ret;
`
