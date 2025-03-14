pragma solidity ^0.8.0;
contract Test18_semanticsSame_3{
            uint A;
            uint B;
            mapping(uint => uint) C;
            uint D;
            function a(uint a, uint b) public {
                B++;
                a=a-(B-(B/2));
            }
            function b(uint a) public {
                b=b-(B-(B/2));
                return;
            }
        }
