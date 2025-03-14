pragma solidity ^0.8.0;
contract Test17_semanticsSame_3{
            uint A=100;
            uint B=50;
            mapping(bytes32 => uint) C;
            uint D=120;
            function a(uint a, uint b, uint c) public{
                A++;
                a--;
                b++;
            }
            function b(uint a, uint b) public{
                a*=a;
                b/=a;
            }
            function c(uint a, uint b, uint c) public{
                D=D+D;
                E=E*D;
                D=80;
            }
        }
