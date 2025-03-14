pragma solidity ^0.8.0;
contract Test17_semanticsSame_2{
            uint A;
            uint B;
            mapping(bytes32 => uint) C;
            uint D;
            function a(uint a, uint b, uint c) public{
                uint E=A;
                uint F = 0;
                return;
            }
            function b(uint a, uint b) public{
                a=a-B;
                b=b-B;
                return;
            }
            function c(uint a, uint b, uint c) public{
                D=D+E;
                A=A+(A+D);
                B=A+(A+A+C[10]);
                D=D+D+(C[67]);
            }
        }
