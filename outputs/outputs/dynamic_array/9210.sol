pragma solidity ^0.8.0;
contract semanticEquivalent_b_Copy_NoMutation {
    uint[] memory first;
    uint[] memory second;
    function semanticEquivalentNoMutation()
    public
    {
        first = first + second;
        first = first + second;
        first = first + second;

        first.push(0);
    }
}
