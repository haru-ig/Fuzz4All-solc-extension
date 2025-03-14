pragma solidity ^0.8.0;
abstract contract MintingProgram {
    function mint_if_bigger(uint256 value, uint256 total, uint min) public virtual pure returns (uint) {}
}
