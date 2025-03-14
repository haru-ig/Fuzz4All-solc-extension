pragma solidity ^0.8.0;
contract NewY {
    uint256 public constant x = 1;
    uint256 public constant x2 = 8;
    function z() public returns(uint256) {
        uint256 a = 119;
        uint256 b = x+x+x2;
        a = a+x*x+x2*a+1;
        a = a+x*x+x2;
        return a;
    }
}
