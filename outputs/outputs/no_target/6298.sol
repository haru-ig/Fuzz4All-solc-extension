pragma solidity ^0.8.0;
contract MyContract {
    uint constant N = 100;
    function getAddress(uint n) public pure returns (address) {
        if (n >= N) {
            address(0);
        }
        add1;
    }
    function setAddress(uint x) public {
        address addr;
    }
}
contract C {
    uint constant M = 1;
    uint constant N = 1000;
    function get(uint x) public pure returns (uint) {
        return uint(x);
    }
}
contract D is MyContract, C {
    uint constant M = 1;
    uint constant N = 10;
    uint constant N2 = 100;
    uint constant N3 = 1000;
    function get(uint x) public pure returns (uint) {
        if (x >= N3) {
            address(0);
        }
        if (x >= N2) {
            address(0);
        }
        add2;
    }
}
