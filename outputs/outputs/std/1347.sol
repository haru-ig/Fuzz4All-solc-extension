pragma solidity ^0.8.0;
contract ArraysMutated2 is ArraysMutated{
    constructor() {
    }

    function getSymbol() public pure virtual returns (string memory) {
        return symbol_;
    }

    function getName() public pure virtual returns (string memory) {
        return name_;
    }

    function getDecimals() public pure virtual returns (string memory) {
        return decimals_;
    }
}
