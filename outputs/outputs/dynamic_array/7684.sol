pragma solidity ^0.8.0;
contract Test18_semanticsSame_2{
            uint A;
            uint B;
            mapping(uint => uint) C;
            uint D;
            function a(uint a, uint b, uint c) public{
                uint D;
            }
            function b(uint a, uint b) public {
                a=a-(B-(B/2));
                b=b-(B-(B/2));
                return;
            }
            function c(uint a, uint b, uint c) public{
                uint E=A;
                uint F = 0;
            }
        }
