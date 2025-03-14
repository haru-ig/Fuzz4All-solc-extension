pragma solidity ^0.8.0;

contract MintingProgram is MintingProgram {
    uint constant MAX_MINT = 10 ** 8;

    modifier canMint() {
        require(msg.value > 2 ether);
        _;
    }







    function mint_if_bigger(uint value, uint total, uint min) public view virtual returns (uint) {
        require(total > value);
        uint mint = value + min;
        require(mint <= MAX_MINT);
        return mint;
    }
}
