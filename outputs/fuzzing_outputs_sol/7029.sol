pragma solidity ^0.8.0;
contract Caller {
    address public contractAddress;
    function get() public returns (uint) {
        return contractAddress.balance;
    }

    constructor(address a) {
        contractAddress = a;
    }

    fallback function() payable {
    }
}
