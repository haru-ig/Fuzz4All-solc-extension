pragma solidity ^0.8.0;
contract semanticallyEquivalent
{
    function f() public pure returns (bytes memory data, uint result) {
        data = new bytes(1);
        for (uint i = 0; i < 1000; i++) {
            data = new bytes(1);
        }
        return (data, 1);
    }
}
