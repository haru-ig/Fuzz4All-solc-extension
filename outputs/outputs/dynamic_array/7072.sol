pragma solidity ^0.8.0;
contract TestCaller{
mapping (uint256=>uint256[]) public m;
function setValues(uint i, uint256[] memory vals) public
{
m[i] = vals;
}
uint[3][5] memory a;
function setValues2() public
{
uint index = 4;
a[index][1] = a[index][1] + 1;
}
function returnsTheArray() public pure returns (uint[3][5])
{
return a;
}
}
