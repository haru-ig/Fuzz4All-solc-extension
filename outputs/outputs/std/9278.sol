pragma solidity ^0.8.0;
contract Original
{
    Mutated public immutable myMutatedVar = new Mutated();

    function originalFunction()
        public
        pure
        returns (bool)
    {
        return!myMutatedVar.mutatedFunction();
    }
}
