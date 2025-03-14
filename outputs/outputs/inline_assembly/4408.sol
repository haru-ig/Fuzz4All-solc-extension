pragma solidity ^0.8.0;
contract Emulator2 {
    function add(uint x, uint y) public returns(uint) {
        assembly {
            x := x - 5
            ret := x
            ret := ret - 1
        }
        return ret;
    }
    function read() public view returns(uint) {
        write();
        return 10;
    }
    function write() public pure {}
}
