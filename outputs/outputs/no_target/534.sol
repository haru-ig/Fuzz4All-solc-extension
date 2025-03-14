pragma solidity ^0.8.0;
contract ContractB is ContractA {
    modifier updateOnlyIfXLessThanY(uint256 x, uint256 y) {
        ContractA.updateOnlyIfXLessThanY(x, y);
        _;
    }
}
