pragma solidity ^0.8.0;
contract Test18_semanticsSame_3{
            uint A;
            uint B;
            mapping(uint => uint) C;
            uint D;
            function a(uint a, uint b, uint c) public{
                if(B==0){
                    return;
                }
            }
            function b(uint a, uint b) public {
                return;
            }
            function c(uint a, uint b, uint c) public{
                uint E=A;
                uint F = 0;
            }
        }
