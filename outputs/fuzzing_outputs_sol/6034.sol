pragma solidity ^0.8.0;
contract ContractWithFallbackMutated {
    function fallback() external payable {}
}
contract EtherTester {
    function sendEtherToContract(address contractAddress, uint amount) public returns (uint) {
        address contractInstance = address(uint160(contractAddress));
        require(contractInstance!= address(0), "Contract instance is zero. Address zero is not allowed.");
        contractInstance.fallback{value: amount}(new bytes(0));
    }
}
