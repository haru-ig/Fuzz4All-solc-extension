pragma solidity ^0.8.0;
contract Constant {
    uint constant X = 1;
    function f() public pure returns (uint) {
        return X;
    }
}
