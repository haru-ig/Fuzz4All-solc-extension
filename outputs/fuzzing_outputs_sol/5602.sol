pragma solidity ^0.8.0;
contract semanticallyequivalent2
{
    function f() public pure returns (bytes memory data, uint result)
    {
        uint a = 100;
        data = new bytes(2);
        uint num = uint(data[0]) + uint(data[1]);
        result = a + num;
        return (data, result);
    }
}
