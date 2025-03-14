pragma solidity ^0.8.0;
contract Maker {

    event EthTransfered(address to, uint value);


    address payable _fallbackAddress;

    constructor(address payable addressToFallbackToWhenException) payable {
        _fallbackAddress = addressToFallbackToWhenException;
    }



    function () external payable {
        uint transferredEther = msg.value;
        emit EthTransfered(_fallbackAddress, transferredEther);
    }


}
