pragma solidity ^0.8.0;
contract Array {
    uint public myArrayLength;
    function findMin(uint[] memory array) public view returns (uint) {

        uint min = array[0];

        for(uint i=1; i<array.length; i++){
            if(array[i] < min){
                min = array[i];
            }
        }

        return min;
    }

    function findMax(uint[] memory array) public view returns (uint) {
        uint max = array[0];
        for(uint i=1; i<array.length; i++){
            if(array[i] > max){
                max = array[i];
            }
        }
        return max;
    }
    function findSum(uint[] memory array) public view returns (uint) {
        uint sum = 0;
        for(uint i=0; i<array.length; i++){
            sum += array[i];

        }
        return sum;
    }
    function buildNewArrayFromArray(uint[] memory array, uint value) public {
        uint len = array.length + 1;
        uint[] memory tmp = new uint[](len);
        for (uint i = 0; i < array.length; i++) {
            tmp[i] = array[i];
        }
        tmp[array.length] = value;
        myArrayLength = len;
        Array(tmp);
    }
    function buildNewArrayRandomFromArray(uint[] memory array) public {
        uint len = array.length + 1;
        uint[] memory random = new uint[](len);
        uint random_start = uint(keccak256(abi.encodePacked(block.difficulty))) % (array.length + 1);
        for(uint i=1;i<len;i++){
            random[i] = uint(keccak256(abi.encodePacked(random_start++))) % (array.length - i + 1) + 1;
        }
        Array(array);
    }
    function rebuildArray(uint[] memory array) public {
        for(uint i=0; i<array.length;i++){
            delete array[i];
        }
    }
}
