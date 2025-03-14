pragma solidity ^0.8.0;
import './MutationEquivalence.sol';
contract MutationEquivalence2 is MutationEquivalence
{
    uint x;
    uint8 y;
    uint16 z;
    uint32 w;
    uint64 v;
    function equivalent() public
    {
        x = x / 10;
        y = y / 10;
        z = z * 10;
        w = w / 10;
        v = v / 10;
    }
}

pragma solidity ^0.8.0;
import './MutationEquivalence2.sol';
