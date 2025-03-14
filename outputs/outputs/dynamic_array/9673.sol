pragma solidity ^0.8.0;
contract Main {
    uint8[][] public arr;
    uint8[][][] public nested;
    uint8[][] private arrPriv;
    uint8[][][] private nestedPriv;
    uint8[][] public _arr;
    uint8[] public _nested;
    uint8[][][] internal _arrInternal;
    uint8[] internal _nestedInternal;
    uint8[][] internal inline_arr;
    uint8[][] internal nested_arr_int;
    uint8[][][] internal inline_arrInternal;
    uint8[][][] internal nested_arrInternal;
    uint8[] internal nonInlineNestingPublic;
    uint8[][][] internal nestedNesting;
    uint8[][][] internal nestedNestingArrayNesting;

    function mutate() public {
        uint8[][] internal _oldArr = internalArr1;
        internalArr1.push([uint8(255)]);
        internalArr1[3] = [uint8(0)];
        internalArr1.pop();
        internalArr1.unshift([uint8(255)]);
        internalArr1.shift();
        internalArr1.insert(1, uint8[0]);
        internalArr1.remove(3);
        internalArr1.removeRange(3, 0);
        internalArr1[653] = [uint8(1)];

        uint8[][] internal _oldNested = nestedArr1;
        nestedArr1.push([uint8(255)]);
        nestedArr1[3] = [uint8(0)];
        nestedArr1.pop();
        nestedArr1.unshift([uint8(255)]);
        nestedArr1.shift();
        nestedArr1.insert(1, uint8[0]);
        nestedArr1.remove(3);
        nestedArr1.removeRange(3, 0);
        nestedArr1[653] = [uint8(1)];

        uint8[][] internal _oldNestedArray = nestedArrArray1;
        nestedArrArray1.push([uint8(255)]);
        nestedArrArray1[3] = [uint8(0)];
        nestedArrArray1.pop();
        nestedArrArray1.unshift([uint8(255)]);
        nestedArrArray1.shift();
        nestedArrArray1.insert(1, uint8[0]);
        nestedArrArray1.remove(3);
        nestedArrArray1.removeRange(3, 0);
        nestedArrArray1[653] = [uint8(1)];
