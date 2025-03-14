pragma solidity ^0.8.0;
contract MutateString
{
    uint public _a;
    bytes32[10] public _values;
    function mutateA(string memory x) public returns(bytes32)
    {
        return bytes32(_a/(_a + 4));
    }
    function mutateB(bytes32 a, bytes32 b, bytes32 x) public returns(bytes32)
    {
        return b/a;
    }
    function get() public view returns (bytes32)
    {
        return bytes32(_a/(_a + 4));
    }
}
