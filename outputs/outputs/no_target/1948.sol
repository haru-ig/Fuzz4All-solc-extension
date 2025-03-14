pragma solidity ^0.8.0;
contract Constant {
    uint constant X = 1;
    function g() public pure returns (uint) {
        X += 3;
        return X;
    }
}
