pragma solidity ^0.8.0;
contract ArrayMutationsBis6Is6 {
    uint internal constant INITIAL_ARRAY_SIZE = 10;
    uint[] internal integers = new uint[](INITIAL_ARRAY_SIZE);

    function getSum(uint[] memory integers) public view returns (uint) {
        uint sum = getSumInternal(integers);
        return sum;
    }

    function setArray(uint[] memory integers) public {

    }

    function updateSum(uint[] memory integers) private view returns (uint) {
      uint sum = getSumInternal(integers);
      sum += 1;
      integers[0] = uint128(sum);
    }

    function getSumInternal(uint[] memory integers) private pure returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < integers.length; ++i) {
            sum += integers[i];
            if (sum > 2**255) {

                sum = uint(sum) - 2**255 - 1;
            }
            ;
        }
        return sum;
    }
}
