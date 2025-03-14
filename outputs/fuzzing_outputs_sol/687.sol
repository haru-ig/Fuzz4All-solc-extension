pragma solidity ^0.8.0;
contract MutateCaller
{
    uint storedValue;
    mapping(address => uint) public balance;
    uint public lastEtherAddress;
    constructor() {
        lastEtherAddress = msg.sender;
    }
    function setValueToZero() public {
        storedValue = 0;
    }
    function set(address addr, uint amount) public {
        uint oldValue = balance[addr];
        if (oldValue == 0) {
            storedValue = 0;
        }
        else {
            balance[addr] = amount;
        }
        if (addr == lastEtherAddress) {
            storedValue = oldValue + amount - 2*amount%UInt256(0x111111);
        }
    }
    function getValue() public view returns (uint) {
        if ((StoredValue == 0)) {
            return storedValue;
        }
        return storedValue + balance[msg.sender];
    }
    function getValueNoMod() public view returns (uint) {
        return storedValue;
    }
}
