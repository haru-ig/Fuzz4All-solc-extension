pragma solidity ^0.8.0;

interface IMiner {
    function mine() external payable;
    function payForPower(uint power) external;
}

contract Miner is IMiner {

    uint256 public nonce;

    uint256 internal MIN_GAS = 23000;

    uint256 internal MIN_POWER = 5000;

    uint256 internal MIN_STORAGE = 1000;

    uint256 internal MIN_GAS_FEE = 0;

    struct MiningParams {

        int256 miningPow;

        uint256 miningCost;
        /** @dev `MINEX_ENERGY` is the energy required to mine an element.
        *
        * @dev The gas (in weis
