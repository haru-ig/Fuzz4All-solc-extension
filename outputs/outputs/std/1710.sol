pragma solidity ^0.8.0;
contract Array {
    struct ArrayStruct { uint id; uint value; mapping(uint => bool) exists; }
    event Log(uint _array);
    Duplicated public duplicated;
    ArrayStruct[] public array;

    ArrayStruct add(ArrayStruct memory x) public {
        array.push(x);
        Log(array.length);
    }
    function push(uint v) public {
        array[array.length] = ArrayStruct(array.length, v, mapping(uint => bool(false)));
        Log(array.length);
    }
    function pop() public {
        if (array.length == 0)
            Log("Array is empty");
        else
            delete array[array.length-1];
        Log(array.length);
    }
}
