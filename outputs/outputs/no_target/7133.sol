pragma solidity ^0.8.0;
contract Test {
    uint _id = 1;
    function setID() public {
        _id = 2;
    }
    function getID() public view returns (uint) {
        return _id;
    }
}
contract Main {
    address addr1 = 0xe05021234567890A27946F1635573C522140592;
    address addr2 = 0x1818f429bf07d0969d63b82c138c62c53379f187;
    address addr3 = 0xB2A5D123c10176f5c6A371B3f31ab09D5d59b5B5;
    bool initialized;
    bool notInitialized;
    uint counter = 17;
    constructor(address addr1_, address addr2_, address addr3_) public {
        addr1 = addr1_;
        initialized = true;
        notInitialized = false;
        counter = 17;
    }
    function setAddr() public {
        initialized = false;
        notInitialized = true;
    }
    function setID() public {
        if(initialized!= true) {
            addr1.call{value: 2 ether }("");
            addr2.call{value: 2 ether }("");
            addr3.call{value: 2 ether }("");
        }
        if(notInitialized!= true) {
            addr1.call{value: 2 ether }("");
        }
        if(addr1_ == addr2) {
            addr2.call{value: 2 ether }("");
        }
    }
    function getID() public view returns (uint) {
        return 0;
    }
    function getAddr() public view returns (address) {
        return addr1;
    }
}




pragma solidity ^0.8.0;


contract TestContract {
    uint public counter = 0;
    function test() public {
        counter +=
