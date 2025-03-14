pragma solidity ^0.8.0;
contract Array {
    function getMax(uint[] memory array)public pure returns(uint _max){
    uint x, y;
    for(uint i = 0 ; i < array.length ; i++)
        if(array[i] > array[x])
            x = i;
    if(array[x]!= array[y])
        for(uint i = x + 1; i < array.length ; i++)
            if(array[y] < array[i])
                y = i;
    if(x < y)
        _max = array[x];
    else
        _max = array[y];
    }
    function getMin(uint[] memory array) public pure returns(uint _min) {

    uint x = 0, y = array.length-1;
    while(x < y){
        if(array[x] > array[y])
            x++;
        else
            y--;
    }
    if(array[x] > ((array[y] & 1) ^ (array[x] ^ (array[y] >> 1)))))
        _min = array[x] >> 1;
    else
        _min = 0;
    }
    function sum(uint[] array) public pure returns (uint _sum){
    _sum = 0;
    for(uint i = 0 ; i < array.length ; i++)
        _sum += array[i];
    }
    function set(uint[] memory array, uint index, uint value) public {
    array[index] = value;
    }
    function get(uint[] memory array, uint index) public view returns (uint) {
    return array[index];
    }
    function sort(uint[] memory array) public pure {
    for (uint i = 0; i < array.length; i++){
        uint j;
        for (uint k = i+1; k < array.length;k++){
            if (array[k] < array[i]) {
                j = k;
                break;
            }
        }
        array[j] = array[i];
        array[i] = j;
    }
    }
}
contract Array {
    function getRange(uint[] memory array, uint start, uint end) public pure returns(uint[] memory range){
        uint size = end - start, i;
        uint[] memory res = new uint[](size);
        for (i = 0; i < size;
