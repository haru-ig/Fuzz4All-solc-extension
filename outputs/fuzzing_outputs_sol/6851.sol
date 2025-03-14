pragma solidity ^0.8.0;
contract Caller
{
    struct Struct {
        address payable a;
        address payable b;
        address payable c;
    }

    event Event(address payable a, address payable b, address payable c);

    mapping (address => address payable) private knownAddresses;
    mapping( address => bool) isKnownAddress;

    constructor () public {
        knownAddresses[msg.sender] = msg.sender;
        knownAddresses[address(this)] = address(this);
        isKnownAddress[address(knownAddresses[msg.sender])] = true;
        isKnownAddress[address(knownAddresses[address(this)])] = true;

    }

    function update() public {
        Struct memory s = Struct(knownAddresses[address(this)], knownAddresses[address(this)], knownAddresses[address(this)] );
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        knownAddresses[address(this)] = addr;
        known
