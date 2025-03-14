pragma solidity ^0.8.0;
contract InlineAssembly7
{
    bytes2 constant MAGIC = "Hello World";
    function testGetData() public pure returns(bytes3) {
        return MAGIC;
    }
}
