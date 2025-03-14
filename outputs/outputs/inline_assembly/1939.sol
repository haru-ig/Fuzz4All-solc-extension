pragma solidity ^0.8.0;
contract OldY {
    uint256 public constant x = 123;
    uint256 public constant y = 60;
    function g(uint256 k) public returns(uint256) {
        return k * x * y / (x+1) + x + y;
    }
    function i(uint256 z) public returns(uint256) {
        while(1!= z) {
            z = z / x + x*y*z / (2*x) - z + y;
        }
        return x;
    }
}
