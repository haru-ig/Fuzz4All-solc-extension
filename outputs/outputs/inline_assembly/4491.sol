pragma solidity ^0.8.0;
contract Emulator3 {
    function c() public {
    }
    function x() public pure returns(uint) {
        c();
        return 2;
    }
    function y() public view returns(uint) {
        if (x() == 2){
            return 0;
        }
        c();
        return 2;
    }
    function z() public view returns(uint) { return 2; }
    function write() public {}
}
contract Emulator2 {
    function c() public {
    }
    function x() public pure returns(uint) {
        c();
        return 2;
    }
    function y() public view returns(uint) {
        if (x() >= 2){ return 0; }
        c();
        return 2
