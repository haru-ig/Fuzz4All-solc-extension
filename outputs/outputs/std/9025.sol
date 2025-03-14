pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] arr;
    constructor(uint[] memory data) {
        arr = data;
    }
    function mutated(uint[] memory data) public {
        arr = data;
    }
    function getArrAt(uint elementIndex) public view returns (uint) {
        require(elementIndex < arr.length, "Index out of range");
        return uint2uint8(arr[elementIndex]);
    }
}
contract ExampleClassMutated {
    ExampleClass Mutated;
    constructor(uint data) {
        Mutated = new ExampleClass(uint[](new uint[](new uint[](data))));
    }
    function write(uint index, uint value) public {
        uint[] memory newArray = (new uint[](new uint[](new uint[](1 + Mutated.getArrAt(uint2uint8(index))))));
        newArray[uint2uint8(index)] = value;
        Mutated.mutated(newArray);
    }
    function read() public view returns (uint) {
        uint temp = Mutated.getArrAt(1);
        return uint2uint8(temp);
    }
}
contract ExampleClass {
    uint[] arr;
    uint i;
    constructor() {  }
    function getArrAt(uint index) public view returns (uint) {
        return uint2uint8(arr[index]);
    }
    function mutated(uint[] memory data) public {
        uint[] memory newArray = (new uint[](new uint[](new uint[](1 + arr.length + 1))));
        newArray[uint2uint8(arr.length)] = data[uint2uint8(arr.length)];
        for (i=1; i < data.length+1; i++) newArray[uint2uint8(i)] = data[uint2uint8(i)];
        arr = newArray;
    }
    function read() public view returns (uint) {
        uint temp = arr[uint2uint8(arr.length)];
        return uint2uint8(temp);
    }
    function setArrAt(uint index, uint element, uint8 value) public {
        arr[index] = element;
    }
}

pragma solidity ^0.8.0;
library UintUtils {




    function intToUint8(int _value) internal pure returns (uint) {
        return uint8(_value);
    }




    function int2Uint8(int _value) internal pure returns (uint) {
        return (uint
