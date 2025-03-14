pragma solidity ^0.8.0;
contract Test18_semanticsNoChange{
        uint256 public s;
        uint8[5][2] p;
        function f() public returns(uint256) {
            uint x;
            for(uint k=0;k<5;k++) x += p[k][0];
            return x;
        }
    }

pragma solidity ^0.8.0;
contract Test18_semanticsModification{
        uint256 public s;
        uint8[5] x;
        function f() public {
            for (uint8[5] memory l0_ : x) {
                l0_[10 * (k + 1) + 3]++;
            }
        }
    }
