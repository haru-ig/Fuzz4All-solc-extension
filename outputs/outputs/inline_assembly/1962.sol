pragma solidity ^0.8.0;
contract NewY2 {
    uint256 public constant x = 1;
    uint256 public constant x2 = 8;
    function z() public returns(uint256) {
        uint256 a = 119;
        uint256 b = a+x2;
        a = a+x2;
        b = a+x2;
        a = a*a+a+x;
        return a;
    }
}
