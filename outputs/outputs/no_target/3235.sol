pragma solidity ^0.8.0;
contract nine {
    function f(uint _n) public pure returns(uint) {
        return uint(2 ** 16383 - _n);
    }
}
