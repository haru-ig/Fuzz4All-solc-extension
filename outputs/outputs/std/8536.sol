pragma solidity ^0.8.0;
contract MutationEquivalence27
{
}

pragma solidity ^0.8.0;
contract MutationEquivalence28
{
    uint x;
    constructor function() initializer {x = 2;}
    function getX() constant returns (uint x) {return x;}
}
