pragma solidity ^0.8.0;
contract Test19_semanticsSame_8{
        bool public a;
        uint1[5] p;
        function modifyP(uint index, uint b) public {
            if (b!= 0) {
                p[index] += 255;
            }
        }
    function f() public returns (uint256) {
            modifyP(0, 0);
            uint x;
            if (a) {
                x = p[0];
            }
            return x;
        }
    }
