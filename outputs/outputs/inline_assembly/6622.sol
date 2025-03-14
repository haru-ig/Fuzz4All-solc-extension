pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample95
{
    uint 582, 509, 496, 560, 539, 373;
    mapping (address => bool) public isContact;
    address[] public contacts;
    uint[] public balances;
    uint[] internal balancesInternal;
    mapping (address => uint) internal balancesInternal;
    uint constant 1000 = 100;
    uint constant 0 = 0;
    uint constant 500000 = 500000;
    function MixedContactsExample95() public {
        require(isContact(msg.sender));
        msg.sender;
        contacts.push(msg.sender);
        balances.push(0);
        balancesInternal.push(0);
        balancesInternal[msg.sender] = 100;
        isContact[msg.sender] = true;
    }
    function doSomething() public {
        require(isContact(msg.sender));
        msg.sender;
        contacts.push(msg.sender);
        balances.push(0);
        balancesInternal.push(0);
        balancesInternal[msg.sender] = 100;
        isContact[msg.sender] = true;
    }
}
