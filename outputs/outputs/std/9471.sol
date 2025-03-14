pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Contract2 {
    constructor(uint myuint)public{
        emit ContractCreated(msg.sender, myuint);
    }
    event ContractCreated(address creator, uint myuint);
    function setuint(uint myuint)public{
        emit ContractAssigned(msg.sender, myuint);
    }
    event ContractAssigned(address assigner, uint myuint);
}





pragma solidity ^0.8.0;
using Library3 = Array.sol.ArrayLib;

contract Contract3 {
    struct Item{
        address arrayaddress;
    }
    address public arrayAddress1;
    address public arrayAddress2;
    uint public arrayLength;
    mapping(uint=>Item) public array;
    constructor(bool one, bytes32 onebytes32){
        arrayAddress1 = address(this);
        arrayAddress2 = address(this);
        emit AddressCreated(arrayAddress1, one);
        emit AddressCreated(arrayAddress2, onebytes32);
        arrayLength = 1;
    }

    function setarrayAddress(address arrayAddress) public {
        arrayAddress1 = arrayAddress1;
    }

    function getarrayAddress() public view returns (address) {
        return arrayAddress1;
    }

    function setarrayAddress2(address arrayAddress) public {
        arrayAddress2 = arrayAddress2;
    }

    function getarrayAddress2() public view returns (address) {
        return arrayAddress2;
    }

    function getLength() public view returns (uint) {
        return arrayLength;
    }

    function setArrayLength(uint length) public {
        arrayLength = length;
    }



    function getitemat(uint index, address address_of_array) public view returns (address, bytes32) {
        Item memory memory;
        bool found = true;
        for (uint i=0; i <index && found; i++) {
            memory = array[i];
            found = found & (address_of_array == memory.arrayaddress);
        }
        if found {
            return (memory.arrayaddress, array[result].arraybytes32);
        }
        else {
            return;
        }
    }

    function additem(uint elementLength, bytes32 element, address address_of_array) public returns (uint count) {
        count = arrayLength;
        arrayLength += 1;
        Item memory memory;
