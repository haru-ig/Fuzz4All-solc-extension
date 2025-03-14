pragma solidity ^0.8.0;
contract Emulator10 {
    address x;
    function init() public {
        x.transfer(0x99999999999999999999999999999999999999999999999999999999999999999999);
    }
    function set(address x123) public {
        x = x123;
    }
    function read() public view returns (uint) {
        return x;
    }
    function transferEther() public view returns (uint) {
        x.transfer(0x999999999999999999999999999999999999999999999999999999999999999999);
    }
}
