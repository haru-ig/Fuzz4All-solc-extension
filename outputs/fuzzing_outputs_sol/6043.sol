pragma solidity ^0.8.0;
contract ContractForFallbackMutated {
    receive() external payable {}
}
contract EtherTester {
    function sendEtherToContract(address contractAddress) public {
        address contractInstance = address(uint160(contractAddress));
        require(contractInstance!= address(0), "Contract instance is zero. Address zero is not allowed.");
        contractInstance.call{value: 10}(new bytes(0));
        contractInstance.call{value: 9999}(new bytes(0));
        contractInstance.call{value: 10000000}(new bytes(0));
    }
}
