pragma solidity ^0.8.0;
contract Test18_semanticsSameMutated{
        bool public a;
        uint8[5] p_mutated;
        function f() public returns(uint256) {
            if (a) {
                p_mutated[0] = p[0] + 1;
            }
            return p_mutated[0];
        }
    }
