pragma solidity ^0.8.0;
contract mutable {

    uint256 public myInt = 5;

    function mutates() public pure returns (uint256) {
        return uint256(myInt == 5);
    }
}
