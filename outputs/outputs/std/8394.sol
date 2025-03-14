pragma solidity ^0.8.0;
contract ArrayMutationsBis6Is6 {
    function getSum(uint[] memory integers) public view returns (uint) {






        uint sum;
        for (uint i = 0; i < integers.length; ++i){
            sum += integers[i];

        }
        return sum;
    }
}
