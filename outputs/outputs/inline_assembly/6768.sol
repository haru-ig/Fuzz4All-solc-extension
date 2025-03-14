pragma solidity ^0.8.0;
interface IPerson {
    function getAddress() public view returns (address);
}
contract MutatedContactsExample6725 is IPerson {
    address public _owner;
    bool public _isClosed = false;
    mapping(uint256 => uint256) public _contactAddresses;
    mapping(uint256 => uint256) public _contactAddresses2;
    mapping(address => uint256) public _addresses;

    constructor() public {
        _owner = msg.sender;
        owner();
        _contactAddresses2[1] = 9999;
        _contactAddresses[2].transfer(address(this).balance);
    }

    function owner() final public {
        require(msg.sender == _owner);
    }

    function getAddressOf(uint256 _address)final public view returns (address) {
        return _contactAddresses[_address];
    }

    function getAddressOfByAddress(address _address) final public view returns (uint256) {
        return _contactAddresses2[_address];
    }

    function getAddressOfByAddressFromCall() final public view returns (uint256) {
        return IPerson(_contactAddresses2[msg.sender]).getAddressOf(msg.sender);
    }
}
