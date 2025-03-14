pragma solidity ^0.8.0;
contract semanticEquivalentMutation2 {
    mapping(uint => ArrayMutability) m;
    constructor()
    public
    {
        m[9] = ArrayMutability(9, 1);
    }
}
