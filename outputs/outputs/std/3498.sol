pragma solidity ^0.8.0;

contract Math {
    function fact(uint256 x) pure public returns(uint256) {
        require(x > 0);
        return x * (x-1);
    }
    function square(uint256 x) pure public returns(uint256) {
        return x * x;
    }
}
