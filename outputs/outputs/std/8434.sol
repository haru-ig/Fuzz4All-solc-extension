pragma solidity ^0.8.0;
contract ArrayMutationsC6258 {
    struct ArrayMemory {
        uint length;
        mapping (uint => uint) values;
    }
    bool public isA;
    ArrayMemory public numbers;
    function getA() public view returns (uint) {
        return numbers.length;
    }
    function setA(uint x_, uint[] memory numbers_) public {
        numbers.length = x_;
        for (uint i = 0; i < numbers_.length; i++){
            numbers.values[i] = numbers_[i];
        }
    }
    function getLength() public view returns (uint) {
        return numbers.length;
    }
    function setLength(uint l_) public {
        assert(l_ >= numbers.length);
        numbers.length = l_;
    }
    function getFirst() public view returns (uint) {
        return numbers.values[0];
    }
    function getLast() public view returns (uint) {
        return numbers.values[numbers.length - 1];
    }
    function incrementFirst() public {
        numbers.values[0]++;
    }
    function decrementFirst() public {
        if (numbers.values[0]==0){
            numbers.values[0] = uint(~uint(-1));
        } else {
            numbers.values[0]--;
        }
    }
    function incrementLast() public {
        if (numbers.values[numbers.length - 1]==0){
            numbers.values[numbers.length-1] = uint(~uint(-1));
        } else {
            numbers.values[numbers.length - 1]++;
        }
    }
    function decrementLast() public {
        if (numbers.values[numbers.length - 1]==0){
            numbers.values[numbers.length-1] = uint(~uint(-1));
        } else {
            numbers.values[numbers.length - 1]--;
        }
    }
}
