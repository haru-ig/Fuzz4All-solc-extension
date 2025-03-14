pragma solidity ^0.8.0;
contract Test17_semanticsSame_2{
            uint A=100;
            uint B=50;
            mapping(bytes32 => uint) C;
            uint D=120;
            function a(uint a, uint b, uint c) public{
                uint D = 0;


            }
            function b(uint a, uint b) public{
                a=a-B;
                b=b-B;
                return;
            }
            function c(uint a, uint b, uint c) public{
                uint E = 0+A;
                uint F = 0;


            }
        }
