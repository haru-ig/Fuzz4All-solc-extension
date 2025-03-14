pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity76_dynamicCalldataArraysMutators {
    function mutatorTest01(uint[] memory _arr) public returns (uint[] memory) {
        uint[] memory arr = new uint[](128);
        for(uint i = 0; i < arr.length - 1; ++i) {
            arr[i] = uint(i);
        }
        return arr;
    }
    function mutatorTest02(address[] memory _arr) public returns (address[] memory) {
        address[] memory arr = new address[](128);
        for(uint i = 0; i < arr.length - 1; ++i) {
            arr[i] = address(uint(i));
        }
        return arr;
    }
    function mutatorTest03(bytes memory _arr) public returns (bytes memory) {
        bytes memory arr = new bytes(128);
        for(uint i = 0; i < arr.length - 1; ++i) {
            arr[i] = byte(uint(i));
        }
        return arr;
    }
}
