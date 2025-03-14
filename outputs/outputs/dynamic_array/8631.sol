pragma solidity ^0.8.0;
contract MutationTest {
    function mutatedArray_01(uint[] memory _arr) public returns (uint[] memory) {
        uint[10] memory _arr2 = new uint[](10);
        for (uint i=0; i<10; i++) {
            uint temp = _arr[i];
            _arr[i] = 100;
            _arr2[i] = temp;
        }

        uint[] memory _arr2;
        for (uint i=0; i<10; i++) {
            _arr2 = new uint[](2);
            _arr2[0] = _arr[i];
            _arr2[1] = _arr[i + 5];
            (uint _0, ) = _arr[i + 5];
            _arr2 = append(uintToBytes(uintToString(_arr[i])), _arr2);
        }
        return _arr2;
    }
    function mutatedArray_02(address[] memory _arr) public returns (address[] memory) {
        address[] memory _arr2 = new address[](10);
        for (uint i=0; i<10; i++) {
            address temp = _arr[i];
            _arr[i] = 100;
            _arr2[i] = temp;
        }

        address[] memory _arr2;
        for (uint i=0; i<
