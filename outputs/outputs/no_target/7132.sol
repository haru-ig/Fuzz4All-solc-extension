pragma solidity ^0.8.0;
contract Test {
    uint _id = 1;
    function setID() public {
        _id += 2;
    }
    function getID() public view returns (uint) {
        return _id;
    }
}
contract Main {
    address addr1;
    address addr2;
    address addr3;
    bool initialized;
    constructor(address addr1_) public {
        addr1 = addr1_;
        initialized = true;
    }
    function setAddr() public {
        initialized = false;
    }
    function setID() public {
        if(initialized!= true) {
            addr1.call{value: 2 ether }("");
            addr2.call{value: 2 ether }("");
            addr3.call{value: 2 ether }("");
        }
    }
    function getID() public view returns (uint) {
        return 0;
    }
    function getAddr() public returns (address) {
        return addr1;
    }
}
