pragma solidity ^0.8.0;
contract semanticallyequivalent
{
    function f() public pure returns (bytes memory data, uint result) {
        data = new bytes(1);
        result = 2;
        return (data, result);
    }
}
