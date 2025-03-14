pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    constructor ()
    {
        a = new ArrayItem[](3);
    }
    function updateArray() public {
        a[aLength] = ArrayItem(true);
        aLength++;
    }
    function getElementCount() public view returns (uint) {
        return a.length;
    }
    function getElementAtIndex(uint _index) public view returns (uint, bool) {
        require(_index >= 0 && _index < a.length,
            "Invalid element index.");
        return (_index, a[_index].b);
    }
}
