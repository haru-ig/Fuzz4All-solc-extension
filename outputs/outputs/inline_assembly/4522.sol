pragma solidity ^0.8.0;
contract Emulator19 {
    mapping (uint => address) public memoryAddress;
    mapping(address => uint) public storedAddresses;
    function memoryAddress(uint addressNo) public view returns(address) {
        return memoryAddress[addressNo];
    }
    function storeAddress(address caller, uint addressNo) public {
        memoryAddress[addressNo] = caller;
        storedAddresses[caller] = addressNo;
    }
    function test() public pure returns(uint) { return storedAddresses[data]; }
    uint public data;
    constructor(uint _data) public { data = _data; }
    function setData(uint _data) public {
        storedAddresses[msg.sender] = data;
        data = _data;
    }
    function getAddressNo(address c) public pure returns(uint) { return storedAddresses[c]; }
    function callTest() public view returns(uint) { return storedAddresses[msg.sender]; }
}
