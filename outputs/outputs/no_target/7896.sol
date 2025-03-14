pragma solidity ^0.8.0;
contract Wrapper5 {
    address payable a;
    function set(address payable aa) public returns (uint) {
        a = aa;
        return 0x01;
    }
    function set2(address payable ab) public returns (uint) { return set(ab); }
}
