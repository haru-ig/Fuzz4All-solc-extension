pragma solidity ^0.8.0;
contract Mutator2{
uint16 x;
uint8 y;
constructor() public {
x = 14;
}
uint16 _x(uint256 _x) public view returns(uint16) {
return (x + _x + 3 + (10)) / 5;
}
uint8 _y(uint256 _y) public view returns(uint8) {
return (y + (_y + 2) + (10)) / 5;
}
function mutate(uint256 _x,uint256 _y) public {
uint16 z = _x*_x + _x*_y*(y+2) + x*_y*(x+1);
uint8 w = _y*_y + _y*_x*(x+2) + y*_x*(y+1);
x += _x+2;
y -= 1;
}
}
