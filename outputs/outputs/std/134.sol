pragma solidity ^0.8.0;
abstract contract MintingProgram {
    function mint_if_bigger(uint value, uint total, uint min) public virtual pure returns (uint) {}
}
