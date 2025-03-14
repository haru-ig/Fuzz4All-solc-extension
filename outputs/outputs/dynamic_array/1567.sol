pragma solidity ^0.8.0;
contract MutatedDynamicArraysV1 {

    struct ArraySizeStruct {
        uint8 a;
        uint8 b;
        uint8 c;
    }
    ArraySizeStruct[] public a;
    function setSizes(uint8 x) public view {
        a.push(ArraySizeStruct({
            a: x,
            b: x,
            c: x
        }));
    }
    function callData() public {
        a.push(ArraySizeStruct({
            a: 0,
            b: 0,
            c: 0
        }));
        a.push(ArraySizeStruct({
            a: 0,
            b: 0,
            c: 0
        }));
    }
}
