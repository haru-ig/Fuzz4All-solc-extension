pragma solidity ^0.8.0;
contract Array {
    uint256[] memory array;
    uint256[] array2 = new uint256[](3);
   uint[5] array3;
    uint[5][5] array4;
    uint[1][5][5] array5;
    uint[5][1][5] array6;
    uint[1][5][5][5] array7;
    uint[5][1][5][5][5] array8;


    function readArray() public view returns (uint256[] memory) {
        return array;
    }
    function writeArray(uint[] memory newarray) public {
        array = newarray;
    }
    function readArray2() public pure returns (uint256[][] memory) {
        return array2;
    }
    function readArray3() public pure returns (uint[5] memory) {
        return array3;
    }
    function readArray4() public pure returns (uint[5][5] memory) {
        return array4;
    }
    function readArray5() public pure returns (uint[1][5][5] memory) {
        return array5;
    }
    function readArray6() public pure returns (uint[5][1][5] memory) {
        return array6;
    }
    function readArray7() public pure returns (uint[1][5][5][5] memory) {
        return array7;
    }
    function readArray8() public pure returns (uint[5][1][5][5][5] memory) {
        return array8;
    }
        function get(uint i) public view returns (uint256) {
            return array[i];
        }
    function set(uint i, uint y) public {
        array[i] = y;
    }
    function checkNull() public view returns (bool) {
        return array == null;
    }
    function getZero() public pure returns (uint) {
        return 0;
    }
    function setZero() public {
        array = new uint256[](0);
    }
    function add(uint a, uint b) public pure returns (uint) {
        return array[i] + b;
    }
    function mult(uint a, uint b) public pure returns (uint) {
        return array[i] * b;
    }
    function eq(uint a, uint b) public pure returns (bool) {
        return array[i] == b;
    }
    function min(uint a, uint b) public pure returns (uint) {
        return array[i] < a? array[i] : a;
    }
    function max(uint a, uint b) public pure returns (uint) {
        return array[i] > b? array[i] : b;
    }
    function sum(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    function sort(uint x, uint y) public pure returns (uint) {
        if(array[i] < x) {
            uint j = uint(array[i]);
            array[
