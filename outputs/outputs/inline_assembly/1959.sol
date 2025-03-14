pragma solidity ^0.8.0;
contract NewY {
    uint256 public constant x = 1;
    uint256 public constant x2 = 8;
    function z() public returns(uint256) {
        uint256 a = 119;
        uint256 b = a+x;
        a = a+x;
        b = a+x;
        a = a*a+a+1;
        return a;
    }
}
