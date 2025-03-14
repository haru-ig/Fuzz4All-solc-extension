pragma solidity ^0.8.0;
contract Test30013 {
    constructor() public {}
    fallback() external payable { }
    address[100000000000] data;
}
