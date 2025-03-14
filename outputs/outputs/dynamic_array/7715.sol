pragma solidity ^0.8.0;
contract Test18_semanticsDiff{
        bool public a;
        uint8[5] p;
        function f() public returns(uint256) {
            uint x;
            if (a) {
                p[0] = 10;
                x = p[0];
            }
            return x;
        }
    }

pragma solidity ^0.8.0;
contract Test18_semanticsDiff2{
        bool public a;
        uint8[5] p;
        function f() public returns(uint256) {
            uint x;
            if (a) {
                x = p[0];
                x = p[1];
            }
            return x;
        }
    }
