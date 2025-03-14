pragma solidity ^0.8.0;
contract MintingProgram {
    MintingProgram public minting;
    constructor(MintingProgram _minting) public {
        minting = _minting;
    }

    function mint_if_bigger(uint value, uint a, uint b) public returns (uint) {
        return minting.mint_if_bigger(value, a, b);
    }
}
