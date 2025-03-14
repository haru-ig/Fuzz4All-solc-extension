pragma solidity ^0.8.0;
import 'Array.sol';
contract M8{
    uint public x;
    uint public y;
    struct ArrayStruct {
        uint x;
        uint y;
        uint z;
    }
    mapping(uint => ArrayStruct) public values;
    constructor() {
        x = 1000;
        y = 128;
        values[42] = ArrayStruct (uint(0), uint(42), uint(1367));
    }
    function findMin(ArrayStruct[] storage array) public constant returns (uint _min) {
       ArrayStruct[] memory clone = new ArrayStruct[](uint(array.length));
      for (uint i=0; i<uint(array.length); i++) {
          clone[i] = array[i];
      }
        uint minIndex = array[0].x;
        _min = array[0].x;
        for (uint i = 1; i < uint(array.length); i++) {
            if (clone[i].x < _min) {
                minIndex = clone[i].x;
                _min = clone[i].x;
            }
        }
    }
    function findMax(ArrayStruct[] storage array) public constant returns (uint _max) {
       ArrayStruct[] memory clone = new ArrayStruct[](uint(array.length));
      for (uint i=0; i<uint(array.length); i++) {
          clone[i] = array[i];
      }
        uint maxIndex = array[0].x;
        _max = array[0].x;
        for (uint i = 1; i < uint(array.length); i++) {
            if (clone[i].x > _max) {
                maxIndex = clone[i].x;
                _max = clone[i].x;
            }
        }
    }
    function findSum(ArrayStruct[] storage array) public constant returns (uint _sum) {
       ArrayStruct[] memory clone = new ArrayStruct[](uint(array.length));
      for (uint i=0; i<uint(array.length); i++) {
          clone[i] = array[i];
      }
        uint sum = array[0].x + array[1].x;
        for (uint i = 2; i < uint(array.length); i++) {
            sum = sum + array[i].x;
        }
    }
    func(ArrayStruct array[2]) public getSum (uint x, uint y) constant returns (uint){
        uint result;
        for (uint i = 0; i < uint(array.length); i++) {
            result = result + uint(array[i].x);
            result = result * uint(array[i].x);
        }
        return result;
    }
}
