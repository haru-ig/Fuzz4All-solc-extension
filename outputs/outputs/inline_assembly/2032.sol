pragma solidity ^0.8.0;
contract SimpleY8 {

    uint256 public x;
    uint8 public y;
    uint256 private z;

    function f() public view returns (uint256) {
        return (1 / (1 / (1 / (1 / x + x) + x) + x) + x) + x) + x) + x) + x);
    }
}
