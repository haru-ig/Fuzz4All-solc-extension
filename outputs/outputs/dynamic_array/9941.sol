pragma solidity ^0.8.0;
struct Basic {
    uint constant public x;
    uint public y;
    constructor(uint _x, uint _y) public { y = _y; }
}
struct Derived1 is Basic {}
struct Derived2 is Basic {}

contract ContractWithSameAddress {
    uint constant public lastindex = 35;
    Derived2[] public myArray;
    address[] public addresses;
    constructor() {
        myArray = new Derived2[](lastindex + 1);
        addresses = new address[](lastindex + 1);
        for (uint i = 0; i < lastindex + 1; ++i) {
            myArray[i].x = 0;
        }
    }
    function get(address _address) public returns (address) {
        require(_address!= 0x0);
        uint i = uint(arrayIndexOf(myArray, _address));
        return addresses[i];
    }
    function arrayIndexOf(Derived2[] storage _array, address _address) private returns (uint) {
        require(_array.length > 0);
        for (uint i = 0; i < _array.length; ++i) {
            if (_array[i].x == 0) continue;
            if (_array[i].x == address(0)) return i;
            if (_array[i].x == _address) return uint(i);
        }
        return 0xffffffff;
    }
}
