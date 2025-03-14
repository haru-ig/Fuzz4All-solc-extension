pragma solidity ^0.8.0;
contract Test {
    uint _id;
    function setID(uint id_) public {
        _id = id_;
    }
    function getID() public view returns (uint) {
        return _id;
    }
}
contract Main {
    address addr;
    address addr1;
    uint id;
    constructor(address addr_) public {
        addr = addr_;
        id = 1;
        addr1.call{value: 2 ether }("");
    }
    function setAddr() public {
        addr1.call{value: 2 ether }("");
    }
    function setID() public {
        id = 2;
    }
    function getID() public view returns (uint) {
        return id;
    }
}
