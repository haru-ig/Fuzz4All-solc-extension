pragma solidity ^0.8.0;
contract MutationEquivalence3
{
    function run(int32 a, uint32 b) public returns (int32)
    {
        if (a < b + 10) {
            return (b / 2) + 3;
        }
        return 0;
    }
}
