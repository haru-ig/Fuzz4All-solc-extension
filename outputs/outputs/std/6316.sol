pragma solidity ^0.8.0;
contract Mutated {
    struct Element {
        uint256 id;
        uint256 value;
    }

    uint256[] array;
    uint256[] reversedArray;

    Element[] memory a;

    constructor() {
        for (uint256 i = 1; i < 10; i += 2) {
            array.push(i);
        }

        array.push(a.length);

        for (uint256 i = 0; i < 5; i++) {
            Element memory new = Element({id: i + 2, value: 2 * i});
            array.push(new.id + 5);
            a.push(new);
        }

        reversedArray = new uint256[](4);
        uint256 pos;
        for (uint256 i = 0; i < 5; i++) {
            reversedArray[pos++] = i + 1;
            reversedArray[pos++] = new uint256(2 * i - 1) + 5;
        }


    }

    function get() public view returns (uint256, uint256) {
        (uint256 id, uint256 value) = getValue(array[array.length - 1]);
        (uint256 id2, uint256 value2) = getValue(reverseArray[array.length - 1] + 5);
        for (uint256 i = 0; i < array.length - reversedArray.length  + 1; i++) {
            uint256 id3 = getValue(a[i].id + 5).id;
            uint256 value3 = getValue(a[i].id + 5).value;
            (uint256 id4, uint256 value4) = getValue(array[i]).id + array.length;
            (uint256 id5, uint256 value5) = getValue(reversedArray[i]);
        }
        (uint256 id6, uint256 value6) = getValue(getValue(array[0])).id - 5;
        bool condition = (id + 5) < a.length;
        bool condition2 = getValue(a.length).id >= 23;
    }

    function getValue(uint256 index) public view returns (uint256, uint256) {



        uint256 result = 0;
        if (index <= 3) {
            uint256 array_index = index < array.length? index : array.length - 1;
            uint256 array_value = value(array[array_index]);
            uint256 value_result = value(array_value);
            for (uint256 i = 0; i
