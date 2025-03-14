pragma solidity ^0.8.0;
contract Mutator4 {
uint256 x;
uint256 y = 1;
constructor() public {
x = 3;
}

function mutate(uint256 _x, uint256 _y) public {
x = x*_x + _x*_x + _x*_x*_x + 1;
y = y + _y - 1;
}
}
pragma solidity ^0.7.6;
contract Mutator5 {
uint256 x;
uint256 y = 5;
constructor() public
{
x = 3;
}

function mutate(uint256 x, uint256 y) public {
	x = 1;
	x = 1 + x;
	y = x/y;
	y = y-(x/(x+y+y/x));
	x = 2;
}
}
