pragma solidity ^0.8.0;
contract Example
{
    function getMin(uint[] memory array) public view  returns (uint){
        return array[0];
    }
    function getMax(uint[] memory array) public view  returns (uint){
        return array[2];
    }
    function sum(uint[] memory array) public view returns (uint){
        uint sum=0;
        for (uint elemIndex = 0; elemIndex < array.length; elemIndex++) {
            sum = sum + array[elemIndex];
        }
        return sum;
    }
    function count(uint[] memory array) public pure returns (uint) {
        uint count = 0;
        for (uint elemIndex = 0; elemIndex < array.length; elemIndex++) {
            count = count + 1;
        }
        return count;
    }
}
