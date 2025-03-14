pragma solidity ^0.8.0;
contract semanticallyequivalent20
{
uint public x = 2;
uint public y = 4;
uint public z = 8;
function mod(uint num1, uint num2) public pure returns(uint result) {
	  result= num1 % num2;
}
modifier mod_function(uint x, uint y) public pure {
    require(x % y==mod(x,y), "Invalid x-y condition");
    _;
    }
 function f() external payable mod_function(x,y) {
    mod(x,y);
    x = x + 2;
}
}
