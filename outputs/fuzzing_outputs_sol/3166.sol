pragma solidity ^0.8.0;
contract Contract11Mut4{
    event Fulfilled(address payable owner, uint256 indexed value);
    constructor() {
        fallback();
    }
    receive() external payable {
        fallback();
    }
}
