pragma solidity ^0.8.0;
contract Test17_semanticsSame_1{
            uint A;
            uint B;
            mapping(bytes32 => uint) C;
            uint D;
            function a(uint a, uint b, uint c) public{
                uint D;
            }
            function b(uint a, uint b) public{
                a=a-B;
                b=b-B;
                return;
            }
            function c(uint a, uint b, uint c) public{
                uint E=A;
                uint F = 0;
            }
        }
