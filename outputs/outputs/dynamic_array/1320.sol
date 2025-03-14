pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck4 {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint public length;
    address addr;
    uint pubIndex;
    uint arrayLengthAfterArrayChange;
    uint lengthAfterArrayAssignment;
    constructor ()
    {
        addr = msg.sender;
        length = 1;
        ArrayItem memory a0;
        a0.b = true;

        (address addr2, arrayLengthAfterArrayChange) = 0;
        if (addr == addr2) {
            array[length] = a0;
            arrayLengthAfterArrayChange = length;
            length = length + 1;
        }
        (index, length) = (index, length - 1);
        length += 1;
        array[index] = array[length];
        array[length] = array[index];
        lengthAfterArrayChange = index;
        lengthAfterArrayAssignment = length;
        pubIndex = 1;
        pubIndex++;
        pubIndex++;
        pubIndex++;
    }
}


pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayNestedTypeCheck {
    struct A { uint a; }
    struct B { uint b; }
    struct C { uint c; }
    struct D { uint d; }
    struct E { uint e; }
    struct F { uint f; }
    A[] array;
    bool checkIndex;
    function test() public {
        ArrayItem memory a1;
        a1.b = true;
        ArrayItem memory a0;
        a0.b = false;
        array[0] = a0;
        array[1] = a1;
        array[2] = a1;
        array[3] = A({a: 0});
        array[4] = (A({a: 0}));
        array[5] = (A({a: 0}));
        array[6] = B({b: 0});
        array[7] = (B({b: 0}));
        array[8] = (B
