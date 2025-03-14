pragma solidity ^0.8.0;
contract Multiprecision {
    using ArrayMutations for ArrayMutations.array;

    int256[ ] public array;
    function multiplyBy(int256) public {
        (int256 num, int8[ ] digits) = arrayMul((array[0])*10);
    }
}
