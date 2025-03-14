pragma solidity ^0.8.0;
contract Test18_semanticsSame_9{
        bool public a;
        uint8[5] p;
        function modifyP(uint index, uint16 a) public {
            if (a!= 0) {
                p[index] += a;
            }
        }
        function f() public returns(uint256) {
            modifyP(0, 0);
            uint x;
            if (a) {
                x = p[0];
            }
            return x;
        }
    }
