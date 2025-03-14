pragma solidity ^0.8.0;
contract MintingProgram {
    function mint(uint a) public virtual returns (uint) {
        return a;
    }
    function mint_bigger(uint a, uint b) public pure virtual returns (uint) {
        return (a >= b? mint(a) : 0);
    }
}
