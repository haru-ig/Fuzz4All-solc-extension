pragma solidity ^0.8.0;

contract Test is Main {
    bool a = true;
    uint i;
    function setA() public {
        a =!a;
    }
    function setI() public {
        i = 0;
    }
    function getA() public view returns (bool) {
        return a;
    }
    function getI() public view returns (uint) {
        return i;
    }
    function setID() public {
        if (a == false) {
            if (i == 0) {
                setA();
            } else {
                i = 0;
            }
        }
    }
}
contract Main is Test {
    event A();
    event ID();
    constructor(address addr1_) public {
        addr1 = addr1_;
    }
    function setAddr(address addr) public {
        addr1 = addr;

    }
    function setID() public {
        if (!a) {
            if (i == 0) {
                setI();
            } else {
                i = 0;
            }
        }
    }
    function getPos() public view returns(uint) {
        return i;
    }
    function getAddr() public view returns(address) {
        return addr1;
    }
    function getID() public view returns (uint) {
        return 0;
    }
}
