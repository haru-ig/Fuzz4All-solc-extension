pragma solidity ^0.8.0;
contract EtherTesterMutated {
    function sendEtherToContract(address contractAddress, uint amount) public {
        require(contractAddress!= address(0), "Contract instance is zero. Address zero is not allowed.");
        uint value = contractAddress.call{value: amount}(new bytes(0));
        uint value2 = contractAddress.call{value: 10}(new bytes(0));
        uint value3 = contractAddress.call{value: 10}(new bytes(0));
    }
}
