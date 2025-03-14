pragma solidity ^0.8.0;
contract Mutated_semanticallyEquivalentSolidity76_dynamicCalldataArrays {
    function mutatorTest01(uint[] memory _arr) public returns (uint[] memory) {
        uint[] memory _newArr = new uint[](10);
        _arr.value[0] = 1;
        for (uint i=0;i<_newArr.length;i++)
        _newArr[i] = _arr[0];
        return _newArr;
    }
    function mutatorTest02(address[] memory _arr) public returns (address[] memory) {
        address[] memory _newArr = new address[](10);
        (address memory _newArrElement) = _arr[0];
        _newArrElement.value = 1;
        for (uint i=1;i<5;i++)
            _newArr[i*(i-1)/2] = (_arr[i])[0];
        return _newArr;
    }
    function mutatorTest03(bytes memory _arr) public returns (bytes memory) {
        bytes memory _newArr = new bytes(10);
        _newArr.value[0] = 1;
        for (uint i=0;i<_newArr.length;i++)
        _newArr[i] = _arr[0];
        return _newArr;
    }
    function mutatorTest04(int[] memory _arr) public returns (int[] memory) {
        int[] memory _newArr = new int[](10);
        int(_newArr[0]).value = 1;
        for (uint i=1;i<5;i++)
            _newArr[i*(++_newArr.
