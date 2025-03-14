pragma solidity ^0.8.0;
contract ContractWithPayableFallbackMutated {
    receive() external payable {}
}
contract EtherTester {
    function sendEtherToContract(address contractAddress, uint amount) public {
        address contractInstance = address(uint160(contractAddress));
        require(contractInstance!= address(0), "Contract instance is zero");
        (bool success, bytes memory result) = contractInstance.call{value: amount}(new bytes(0));
        require(success, "Ethereum call failed");
        (success, result) = contractInstance.call{value: 10}(new bytes(0));
        require(success, "Ethereum secondary call failed");
        (success, result) = contractInstance.call{value: 10}(new bytes(0));
        require(success, "Ethereum third call failed");
    }
}
