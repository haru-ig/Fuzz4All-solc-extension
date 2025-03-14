pragma solidity ^0.8.0;
contract SemanticMutation21
{
    function x(uint b) public pure {
        uint a = 5;
        if (b < a) {
        }
        if (b > a && b <= a) {
            uint c = 5;
            assert(0);
        }

    }
}
