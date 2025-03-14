pragma solidity ^0.8.0;
contract SemanticallyEquivalent5 {
    function f() public {
        bytes memory arrayData = "abcdefgh";
        uint256[] memory array;
        uint256[] memory array2;
        bool[uint256] memory boolArray;
        int256[] memory intArray;
        address addressData;
        struct Struct{ uint8 length; bytes bytes; } memory structData;
    }
}
