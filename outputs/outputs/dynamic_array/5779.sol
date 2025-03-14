pragma solidity ^0.8.0;
contract Test869B{
    uint8[100] memory x;
    address y;
    constructor () public {y = msg.sender;}
    function() public payable {
        x.length += 5;
    }
    event Log(uint8 a, uint8 b);
    function f() public {
    	x.length += 1;
    	emit Log(x.length, x[0]);
    }
}
