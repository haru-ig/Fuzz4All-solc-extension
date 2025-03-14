pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;


library SimpleStorage {


    mapping(address => bytes32) public dataStore;

    function store(address userAddress, bytes32 key, bytes memory value) public {
        dataStore[userAddress][key] = value;
    }
    function store2(address userAddress, bytes32 key, bytes memory value) public{
        data[userAddress][key] = value;
    }
    function getData(address userAddress, bytes32 key) public view returns(bytes32) {
        return dataStore[userAddress][key];
    }

    function getData2(address userAddress, bytes32 key) public view returns(bytes32) {
        return data[userAddress][key];
    }

}
