pragma solidity ^0.8.0;
contract Test18_semanticsSame{
        bool public a;
        uint8[5] p;
        function f() public returns(uint256) {
            uint x;
            if (a) {
                x = p[0];
            }
            return x;
        }
    }
