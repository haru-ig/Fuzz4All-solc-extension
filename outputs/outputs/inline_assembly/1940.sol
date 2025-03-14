pragma solidity ^0.8.0;
contract OldY2 {
    uint256 public constant x = 123;
    uint256 constant k = x;
    uint256 public constant y = 60;
    uint256 public constant z = x + 1;
    function j() public returns(uint256) {
        return z*(2*y*(z/x))/(x+1) + x + y;
    }
}
