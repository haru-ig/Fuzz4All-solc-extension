pragma solidity ^0.8.0;

contract Comp {
    uint256 constant _COMP_COEFFICIENT = 5e18;
    address payable sender;
    uint256 value = 0;
    constructor() {
        value = msg.value;
    }

    function compensate() public payable{
        sender.transfer(value * _COMP_COEFFICIENT);
    }

    function withdraw() public {
        sender.transfer(value / _COMP_COEFFICIENT);
    }
}


pragma solidity ^0.8.0;
contract StorageAccess {
    address addr;
    string name;
    uint256 storage;

    constructor() {
        addr = msg.sender;
        name = "Storage Access Contract";
        storage = 5e18;
    }

    modifier onlyFromContract(){
        require(msg.sender == addr, "must be a contract");
        _;
    }


    function storageAccess() public view onlyFromContract() returns (uint256) {
        return storage;
    }


    function addr() public view returns (address) {
        return addr;
    }


    function name() public view returns (string memory) {
        return name;
    }


    function setName(string memory _name) public onlyFromContract() {
        name = _name;
    }


    function balance() public view returns (uint256) {
        require(msg.sender == addr, "Invalid message sent or contract no longer exists. Function call from noncontract");
        return address(this).balance;
    }

}

pragma solidity ^0.8.0
