pragma solidity ^0.8.0;
contract Array {
    using Storage for uint;
    uint[] public array1;
    uint constant arraySize = 5;

    function push(uint x) public {
        array1.push(x);
        Storage storage storage = Storage(uint16(address(this).balance));
        storage.write(arraySize, array1.length);
    }
    function size() public view returns (uint){
        return array1.length;
    }
    function min() public view returns (uint){
        uint min = (uint)1e28;
        uint length = array1.length;
        for(uint i=0; i<length; i++){
            uint x = uint(array1[i]);
            if(x < min || i == 0){
                min = x;
            }
        }
        return min;
    }
    function max() public view returns (uint){
        uint max = (uint)0;
        uint length = array1.length;
        for(uint i=0; i<length; i++){
            uint x = uint(array1[i]);
            if(x > max){
                max = x;
            }
        }
        return max;
    }
    function sum() public view returns (uint){
        uint result = 0;
        uint length = array1.length;
        for(uint i=0; i<length; i++){
            uint x = uint(array1[i]);
            result = result + x;
        }
        return result;
    }
    function set(uint index, uint x) public {
        array1[index] = x;
    }
    function get(uint index) public view returns (uint){
        return array1[index];
    }
    function sort() public {
        uint tmp;
        uint length = array1.length;
        for(uint i=0; i<length; i++){
            for(uint j=i+1; j<length;j++){
                if(array1[j] < array1[i]){
                    tmp = array1[j];
                    array1[j] = array1[i];
                    array1[i] = tmp;
                }
            }
        }
    }
}
