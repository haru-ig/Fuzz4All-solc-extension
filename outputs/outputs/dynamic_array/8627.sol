pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity77_mutatedCalldataArrays {
    constructor() public {
        uint[] memory _arr = new uint[](0);
        uint[] memory _newArr;
        _newArr.push(0x1);
        uint[] memory _anotherArr = new uint[](1);
        _anotherArr[0] = 1;

        uint[] memory _arr2 = callTest01(_arr);
        address[] memory _arr3 = callTest02(_arr);
        bytes memory _arr4 = callTest03(_arr);
        int[] memory _arr5 = callTest04(_arr);
        uint[] memory _anotherArr2 = mutatorTest01(_arr);
        address[] memory _anotherArr3 = mutatorTest02(_arr);
        bytes memory _anotherArr4 = mutatorTest03(_arr);
        int[] memory _anotherArr5 = mutatorTest04(_arr);
    }

    function callTest03_mutated(bytes memory _arr) public view returns (bytes memory) {
        uint[] memory _arr2;
        _arr2.push(0x1);
        uint[] memory _arr3 = callTest02(_arr);
        address[] memory _arr4 = callTest01(_arr);
        _arr3 = callTest03(_arr);

        return _arr;
    }

    function callTest02_mutated(address[] memory
