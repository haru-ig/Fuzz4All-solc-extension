pragma solidity ^0.8.0;
contract Test18_semanticsSame_8{
            uint8 public p(1=1+2);
        }


pragma solidity ^0.8.0;
contract Test18_semanticsSame_9{
            void main() public {
                Test18_semanticsSame_7 t1;
                uint8[] memory v = new uint8[](2);
                v[0] = 2;
                t1.p = v;

                Test18_semanticsSame_8 t2;
                t2.p(1);
            }
        }
