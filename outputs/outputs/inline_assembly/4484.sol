pragma solidity ^0.8.0;
contract Emulator6 {
 string x;     uint y;
 function init() public {
    y = x;
 }
 function sub(string x,uint y) public pure returns(string) {
    x = x-y;
    return x;
}
 function write() public {}
}
contract Emulator {

    string x;      uint y;
    address addr;
    address payable addr2;

    function init() public {
       addr = msg.sender;
       x = "msg.sender";
     }
     function setx(string x) public pure returns(uint) { return uint(x); }
     function sety(uint y) public pure returns(uint) { return uint(y); }
     function sub(string x, uint y
