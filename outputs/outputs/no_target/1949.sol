pragma solidity ^0.8.0;
contract Constant {
    uint constant X = 1;
    function f() public pure returns (uint) {
        X = X + 1;
        return X;
    }
    function g() public pure returns (uint) {
        return 2 * X;
    }
}
