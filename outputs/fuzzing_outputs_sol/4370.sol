pragma solidity ^0.8.0;
contract Contract {
    constructor() external {

        fallback();
    }
    receive() external payable{}
}
