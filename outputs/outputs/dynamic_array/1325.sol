pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck5 {
    struct ArrayItem { bool b; }
    ArrayItem[] memory array;
    uint index = 0;
    uint public length;
    address addr;
    uint pubIndex;
    uint lengthAfterArrayChange;
    constructor ()
    {
        addr = msg.sender;
        length++;
        ArrayItem memory a;
        a.b = true;
        array[0] = a;
        array[0].b = false;
        index = 1;
        index--;
        index++;
        lengthAfterArrayChange = index;
    }
    function swapData(int128 _a)
    {
        uint _aLength = length;
        bool _aAddressEqual = addr == address(uint160(_a));
        uint _idx = _aLength - _a;

        array[_idx].b =!array[_idx].b;
    }
    function addAndSwapItem(ArrayItem memory _newItem) {
        uint _aLength = length;
        bool _aAddressEqual = addr == address(uint160(_newItem));
        uint _idx = _aLength - _aLength - 1;
        array[_idx].b = false;
        array[_idx + 1] = _newItem;
    }
}

pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck6 {
    struct ArrayItem { bool b; }
    ArrayItem[] memory array = new ArrayItem[](1);
    uint index = 0;
    uint length;
    ArrayItem memory a;
    address addr;
    uint pubIndex;
    uint lengthAfterArrayChange;
    constructor ()
    {
        addr = msg.sender;
        index = 1;
        length++;
        length++;
        a.b = true;
        array[0] = a;
        address[] memory a1 = new address[](1);
        a1[0] = address(uint160(index));
        a1[1] = address
