pragma solidity ^0.8.0;
contract OldY {
    uint256 public constant x = 123;
    uint256 public constant y = 60;
    function o(uint256 k) public returns(uint256) {
        k = k * x * y / 2 + x + y;
        while(k!= (k/x+x*y*k/2)) {
            k = k / x + x*y*k/2 - k + y;
        }
        return x;
    }
}
