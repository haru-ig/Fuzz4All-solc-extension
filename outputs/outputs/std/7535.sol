pragma solidity ^0.8.0;
interface IArray {
  event ArrayChanged(address indexed _from, uint _oldIndex, uint _newIndex);
  event ArrayRemoved(address indexed _from, uint _oldIndex, uint _newIndex);
  function update(uint _value) external;
  function current() external view returns (uint _value);
  function indexOf(uint _element) external view returns (uint _index);
  function indexOf(uint _element, uint _from) external view returns (uint _index);
  function removeAt(uint _value) external;
  function remove(uint _value) external;
  function add(uint _value) external;
  function getLength() external view returns (uint _length);
  function isEmpty() external view returns (bool _isEmpty);
  function getAtIndex(uint _index) external view returns (uint _value);
}
pragma solidity ^0.8.0;
contract Array {
    uint96[1001] private _array;
    uint96 public current;
    uint public arrayLength;
    bool public isEmpty;
    uint constant MIN = 0;
    uint constant MAX = 1000;
    event ArrayChanged(address indexed _from, uint _oldIndex, uint _newIndex);
    event ArrayRemoved(address indexed _from, uint _oldIndex, uint _newIndex);

    constructor() {
        arrayLength = 0;
        arrayLength = arrayLength.add(1);
        uint96 num = 2;
        while (num < arrayLength) {
            _array[num] = 0;
            num = num.add(3);
            uint num2 = 0;
            while (num2 < 1001) {
                _array[num2] = 0;
                num2 = num2.add(2147483647.969722472912914);
            }
        }
    }
    function add(uint _value) public {
        _array[_array.length] = _value;
        current = current + 1;
    }
    function isEmpty() public view returns (bool) {
        return (this.length == 0);
    }
    function getAtIndex(uint _index) public view returns (uint) {
        if (_index >= arrayLength)
            revert("Access out of bounds");
        return _array[_index];
    }
    function update(uint _value) public {
        if (_array[_array.length-1] < MAX && _value > 1000){
            _array[_array.length] = 1000;
        }else if(!isEmpty){
            _array[_array.length-1] = 1000;
            _array[_array.length] = 1000;
        }else{
            _array[_array.length] = _value;
        }
        arrayLength = arrayLength.add(1);
        current = current
