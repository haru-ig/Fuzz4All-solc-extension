pragma solidity ^0.8.0;
contract ArrayMutationsBis6
{
    function getSum(uint[] memory integers) public view returns (uint) {
        int sum = 0;
        uint len = integers.length;
        for (uint i = 0; i < len; i++) {
            sum += integers[i];
        }
        return sum;
    }

    function setSum(uint[] memory integers) public {
        uint len = integers.length;
        for (uint i = 0; i < len; i++) {
            integers[i] = sum + i;
        }
    }

    function getMult(uint[] memory integers1, uint[] memory integers2) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < integers1.length; i++) {
            sum += integers1[i] * integers2[i];
        }
        return sum;
    }
}
