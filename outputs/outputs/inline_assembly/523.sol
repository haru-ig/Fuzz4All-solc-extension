pragma solidity ^0.8.0;
contract MutatedSemanticsEquivalenty7 {

    fallback() external payable {
       address[] memory arrayAddresses = new address[](3);
       for(uint i=0; i<arrayAddresses.length; i++){
            arrayAddresses[i] = msg.sender;
       }
       emit Log3(arrayAddresses, 0);
       address[] memory arrayAddresses2 = arrayAddresses.concat([address(this)]);
       emit Log2(arrayAddresses2, 0);
    }
    function Log2(address[] memory value1s, uint value2s) public {
        emit Log(value1s[0], "", string(abi.encodePacked(value2s)));
    }

    function Log3(address[] memory value1s, uint value2s) public view {
        emit Log(value1s[0], "", string(abi.encodePacked(value2s)));
    }
    event Log(address value1, string value2, string value3);
}

contract MutatedSemanticsEquivalenty8 {
    address payable public payer;
    address payable[] public receivers;
    constructor() public payable {
        payer = msg.sender;
    }
    receive() external payable {
        receivers.push(msg.sender);
    }
    function Log(address sender) public view {
        emit Log(sender, "");
    }
    function Log(address sender, string memory value) public view {
        emit Log(sender, value, "");
    }
    function Log(address sender, string memory value, string memory stringValue) public view {
        emit Log(sender, value, stringValue);
    }
    function Log(address sender, string memory value, uint uintValue) public view {
        emit Log(sender, value, string(abi.encodePacked(uintValue)));
    }
    event Log(address sender, string value, string stringValue);
}





/**
 * @author <NAME> - <<EMAIL>>
 * @title Equivalently Mutated Solidity
