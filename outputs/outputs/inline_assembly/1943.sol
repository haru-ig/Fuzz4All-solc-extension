pragma solidity ^0.8.0;
{
    uint256 public x = 123;
    uint256 public y = 60;
{
    function g(uint256 k) public returns(uint256) {
        return k * x * y / (x+1) + x + y;
    }
    function i(uint256 z) public returns(uint256) {
        while(true) {
            z = z / x + x*y*z / (2*x) - z + y;
        }
        return x + y;
    }
}
}}
