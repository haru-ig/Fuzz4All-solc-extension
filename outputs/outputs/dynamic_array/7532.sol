pragma solidity ^0.8.0;
contract Test43_DynamicArray4 {
    uint[] public array1;
    uint[] public array2;

    function Test43_DynamicArray4() public {}
    function Test44_DynamicArray4() public {}
    function add() public {
        array1.push(1);
        array2.push(1);
        array1.push(1);
        array2.push(12);
    }
}
