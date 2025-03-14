pragma solidity ^0.8.0;
contract Test17_semanticsSame_1{
            uint A=100;
            mapping(bytes32 => uint) B;
            uint B=120;
            function c(uint a, uint b, uint c) public{
                a=a-B;
                b=b-B;
                return;
            }
            function b(uint a, uint b) public{
                a=a+1;
                b=b+1;
                return;
            }
            function a(uint a, uint b, uint c) public{
                uint E = 0+A;
                uint F = 0;
            }
        }
