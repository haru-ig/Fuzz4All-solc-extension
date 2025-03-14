pragma solidity ^0.8.0;
contract ArrayMutationsBis6Is6 {
    function getSum(uint[] memory integers) public view returns (uint) {
        uint sum;
        uint element;
        for (uint i = 0; i < integers.length; ++i){
            element = integers[i];
            sum += element;
        }
        return sum;
    }
}
