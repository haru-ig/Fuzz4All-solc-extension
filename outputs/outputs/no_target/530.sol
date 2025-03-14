pragma solidity ^0.8.0;
contract ContractA {
    modifier updateOnlyIfXLessThanY(uint256 x, uint256 y) {
        require(x < y);
        _;
    }
}
