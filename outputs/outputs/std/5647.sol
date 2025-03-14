pragma solidity ^0.8.0;
contract M9{
    uint public x;
    mapping(uint => ArrayStruct) public values;
    ArrayStruct[] public array;
    int public a;
    ArrayStruct public empty;
    constructor() {
        array.push(ArrayStruct(uint(0), 0, uint(1367)));
        x = 1367;
        values[42] = ArrayStruct(uint(0), uint(42), uint(1367));
    }
    function setA(int i) public {
        a = i;
        empty = ArrayStruct(uint(0), uint(42), uint(a));
        array.push(empty);

    }
    function getA() public view returns (int) {
        return int(a);
    }
    function getEmpty() public view returns (ArrayStruct) {
        return empty;
    }
    function getValue(uint i) public view returns (ArrayStruct) {
        return values[i];
    }
}
