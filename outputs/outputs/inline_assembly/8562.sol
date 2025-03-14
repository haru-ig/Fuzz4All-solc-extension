pragma solidity ^0.8.0;
contract Modul{
    address a;
    Modul(address address) public{
        a = address;
    }
    function solve() public pure returns (uint) {
        uint r;
        r = 2;
        if(a!= address(0)) {
            r = 2;
        }
        return r;
    }
}
