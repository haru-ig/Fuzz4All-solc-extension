pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType5 {
    uint256[] array;
    function Fatal() public {
        for (uint i = 0; i < 4294967294u; i++) {
             uint256[2222] memory b;
            b[i] = 1;
        }
    }
    function LogMessage() public returns (string memory) {
        uint256[2222] memory x = array[0];
        return (bytes(x));
    }
}
