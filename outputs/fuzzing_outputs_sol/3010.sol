pragma solidity ^0.8.0;
address payable constant contractAddress = payable(msg.sender);

contract Caller {

    event CallExecuted(uint amount);




    address payable constant contractAddress = contractAddress;

    fallback () external payable {
        require(contractAddress.sendTransaction{value: msg.value}());
    }
}
