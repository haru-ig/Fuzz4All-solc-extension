pragma solidity ^0.8.0;
contract DynamicArrayTypeCheck2 {
    struct ArrayItem {
        uint8 a;
    }
    ArrayItem[] public a;

    function updateArray() public {
        a.push(ArrayItem(0));
    }
}
