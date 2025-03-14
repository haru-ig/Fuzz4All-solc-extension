pragma solidity ^0.8.0;
contract MintingProgram {
    function mint_if_bigger(uint value, uint a, uint b) public pure virtual returns (uint) {
        return (a >= b? a - b : 0);
    }
}
