pragma solidity ^0.8.0;
contract TestCaller{
address[]public addr;
constructor()public
{
addr.push(address(testCaller));
}
}

pragma solidity ^0.8.0;
contract TestCaller{
constructor()public
{
}
function testCallerFunction(TestCaller testCaller){
}
}

pragma solidity ^0.8.0;
contract TestCaller{
constructor()public
{
}
function testCallerFunction(address addr){
}
}


pragma solidity ^0.8.0;
contract TestCaller{
constructor()public
{
}
function testCallerFunctionInternal(address addr, uint256 value){
}
function testCallerFunctionInternal(address addr, uint256 value, uint32[] memory arr){
}
function testCallerFunctionInternal(address addr, uint256 value, uint32[] memory arr, address[] memory addrs){
}
function testCallerFunctionInternal(address addr, uint256 value, uint32[] memory arr, bool[] memory booleans){
}
function testCallerFunctionInternal(address addr, uint256 value, uint32[] memory arr, bytes32[] memory bytes32s)... etc
}
