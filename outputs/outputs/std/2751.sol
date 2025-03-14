pragma solidity ^0.8.0;
interface Mutator
{
    function Mutate(MutantArithmetic a) external view returns (MutantArithmetic);
}
