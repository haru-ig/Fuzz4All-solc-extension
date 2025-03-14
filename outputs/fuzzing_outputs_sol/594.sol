pragma solidity ^0.8.0;
contract Caller
{
    address contractAddress;

    function() external payable returns (address)
    {
        address[2] memory arrayAddress = new address[](2);
        arrayAddress[0] = contractAddress;
        arrayAddress[1] = msg.sender;
        return arrayAddress;
    }


    function CreateContractAndPutIntoContractAddress(address contractAddress) public {
        this.contractAddress = contractAddress;
    }
}
