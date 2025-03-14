pragma solidity ^0.8.0;
contract Example {
    address public contractAddress;

    constructor(address addr) {
        contractAddress = addr;
    }

    function fallback() fallback public whenNotPaused {


        address newContractAddr = this.contractAddress;

        newContractAddr.transfer(address(1), 1 ether);
        bytes memory x = "foo";

        storage.data;

        newContractAddr.transfer(address(1), 1 ether);
    }
}
