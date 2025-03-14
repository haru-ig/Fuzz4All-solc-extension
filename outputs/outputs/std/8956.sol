pragma solidity ^0.8.0;
contract ExampleMutatedClass8 {
    uint[100] numbersForComparison;
    constructor() {
        numbersForComparison = buildNumbers();
    }
    function buildNumbers() public view returns (uint[200]) {
        uint[20] ones;
        uint[] memory multipliers = [2, 3, 13, 89, 23, 65, 327, 123, 125];
        uint[] memory results = [0, 2, 2, 8, 2, 40, 12096, 1, 2, 4, 80, 53, 2385, 14, 5, 6, 6, 23, 10, 28, 57, 7970, 17, 234, 2, 80, 36, 120, 5, 80, 25880779805, 1, 2, 3, 4, 50, 120, 3, 4, 120, 1, 2, 3, 4, 50, 120, 3, 4, 120, 1, 2, 3, 4, 50, 120, 3, 4, 120, 1, 2, 3, 4, 50, 120, 3, 4, 120, 100000000];
        for (uint j = 0; j<multipliers.length;j+=1) {
            multipliers[j] *= 2;
        }
        for (uint i = 0; i<multipliers.length; i+=1) {
            uint temp = multipliers[i];
            ones = ones.add(multipliers[i]);
        }
        return multipliers.concat(ones);
    }
    function addIntsComparingResultArray(uint[200] _array) public {
        uint[100] memory output = new uint[](_array.length);
        uint result;
        for (uint i = 0; i < _array.length; i++) {
            result = _array[i];
            for (uint j = 0; j < _array.length;
