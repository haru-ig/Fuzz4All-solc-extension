pragma solidity ^0.8.0;
contract test11
{
    mapping(address=>uint20) public x;
    address[] public my_array;
    function test() public
    {
      delete my_array[0];
      my_array.pop();
    }
}
