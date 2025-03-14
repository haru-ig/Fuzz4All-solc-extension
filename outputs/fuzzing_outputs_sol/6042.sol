pragma solidity ^0.8.0;
contract EtherTester3 {
    receive() external payable {}
}
contract ContractForFallbackCaller5 {
    receive() external payable {}
}
contract ContractForFallbackCallerMutated3 {
    receive() external payable {}
}
contract EtherTester4 {
    function sendEtherToContract(address contractAddress, uint amount) public {
        address contractInstance = address(uint160(contractAddress));
        require(contractInstance!= address(0), "Contract instance is zero. Address zero is not allowed.");
        contractInstance.call{value: amount}(new bytes(0));
        contractInstance.call{value: 10}(new bytes(0));
        contractInstance.call{value: 10}(new bytes(0));
        contractInstance.call{value: 10}(new bytes(0));
        contractInstance.call{value: 10}(new bytes(0));

        contractInstance.call{value: 10}(new bytes(0));
    }
}
