pragma solidity ^0.8.0;
contract semanticallyequivalent
{
    function f() public pure returns (bytes memory data, uint result) {
        uint a = 100;
        data = new bytes(1);
        result = a + 2;
        return (data, result);
    }
}
