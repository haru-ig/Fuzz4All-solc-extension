pragma solidity ^0.8.0;
contract L10 {
    uint public constant value = 0xab2b344401d8bd7d1733f9a0c2b;
    T[] public items;
    struct T {
        uint value;
        bool valid;
    }
    mapping(T => bool) public validItems;
    mapping(uint => T) public itemsByValue;
    constructor () {
        items = new T[](16);
        for(uint i = 0; i < 16; i ++) {
            T item = items[i];
            item.value = uint(keccak256(abi.encode(value, i)));
            item.valid = true;
            itemsByValue[item.value] = item;
        }
        validItems[0] = true;
        validItems[1] = true;
        validItems[2] = true;
    }
  function indexOfItemWithGivenValue(uint _value) external view returns (uint) {
        T storage item = itemsByValue[_value];
        return item.valid? item.value : 0;
    }
  function getValueFromIndex(uint _index) public view returns (uint) {
        if(_index >= items.length || _index < 0) return 0;
        return items[_index].value;
    }
  function validItem(uint _value) public view returns (bool) {
        if(_value == uint(-1)) return false;
        return validItems[_value];
    }
  function isItemOf(uint _value, uint _index) public view returns (bool) {
        T storage t = itemsByValue[_value];
        if(!t.valid) return false;
        return (t.value == _index || _value == items[_index].value);
    }
}
