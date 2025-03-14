pragma solidity ^0.8.0;
contract NotMy {
    uint256 public constant x = 12;
    uint256 public constant y = 23;
    function x(uint256 j) public returns(uint256) {
        return 2*j**(x-y);
    }
}
