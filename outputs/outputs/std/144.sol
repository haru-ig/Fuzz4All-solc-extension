pragma solidity ^0.8.0;
import "./MintingProgram.sol";
contract MintTest is MintingProgram {
    constructor(uint[1] memory amounts) {}

    function mint_if_bigger(uint value, uint total, uint min) public view virtual override returns (uint) {
        return value >= total * min / 100;
    }
}
