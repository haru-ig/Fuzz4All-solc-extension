pragma solidity ^0.8.0;
contract MutateTo4
{
function mutation() public pure {
return new MutateTo4();
}
}

pragma solidity ^0.8.0;
contract MutateTo4
{
function mutation() public pure {
uint[] memory x1;
return [...,..., 0x12];
}
}


pragma solidity ^0.8.0;
contract MutateTo4
{
mapping(address => uint) public map;
function mutation1() public pure {
return map[0xddda1b73f9da1505976a7356149795086669382a];
}
function mutation2() public pure {
mapping(address => uint) memory map1;
address x1;
uint x2 = uint(x1);
mapping (address => uint) storage map2;
mapping (address => uint) constant x3;
uint x4 = uint(x2);
mapping (address => uint) x5;
return [mapping (address => uint),...];
}
}
contract MutateTo4
{
mapping (address => uint) public memory map1;
address x1;
uint x2 = uint(x1);
mapping (address => uint) storage memory map2;
mapping (address => uint) constant memory x3;
uint x4 = uint(x2);
mapping (address => uint) x5;
return [mapping (address => uint),...];
}
