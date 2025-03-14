pragma solidity ^0.8.0;
contract NewY {
    uint256 public constant x = 123;
    uint256 public constant y = 60;
    function n(uint256 k) public returns(uint256) {
        uint256 j = k*x;
        j = j * y / 2 + k + x;
        while(j!= ((k/x+x*y*k/2)*(x+y/x+y+1))) {
            j = j / x + x*y*k/2 + j - k - x*y + x*y*j/2 + x + y;
            j = j/x + x*y;
        }
        return k;
    }
}
