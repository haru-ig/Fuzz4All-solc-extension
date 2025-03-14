pragma solidity ^0.8.0;
contract ArrayMutationsBis6Is6 {
    uint  initialArraySize   = 10;
    uint  min                 = 1;
    uint  max                 = 100;
    uint  increment           = 2;
    uint[] array             = new uint[](initialArraySize);
    mapping(uint => uint) index;

    modifier onlyIfInsideArrayRange(){
        uint i;
        for (i = 0; i < array.length; ++i){
            if (min <= array[i] && array[i] <= max){
            _;
            }
        }
    }

    constructor () {
        uint i;
        for (i = 0; i < initialArraySize; ++i){
            array[i] = i;
            index[i] = i;
        }
        index[array.length] = array.length + 1;
    }

    function getMin() public view returns (uint) {
        return min;
    }

    function getMax() public view returns (uint) {
        return max;
    }

    function setMin(uint minParam) public onlyIfInsideArrayRange {
        min = minParam;
    }

    function setMax(uint maxParam) public onlyIfInsideArrayRange {
        max = maxParam;
    }

    function increment(uint numParam) public onlyIfInsideArrayRange {
        array[index[numParam]] = array[index[numParam]] + numParam + 1;
        index[numParam] = array[index[numParam]] - 1;
    }

    function decrement(uint numParam) public onlyIfInsideArrayRange {
        array[index[numParam]] = array[index[numParam]] - numParam;
        index[numParam] = array[index[numParam]] + 1;
    }

    function getSum() public view returns (uint) {
        return getSum(array);
    }

    function getAll() public view returns (uint[] memory) {
        return array;
    }
}
