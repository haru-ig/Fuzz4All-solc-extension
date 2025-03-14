pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_4a{
            uint A;
            uint D;
            mapping(bytes32 => uint) C;
            function a() public{
                A = C[keccak256(abi.encodePacked(A))];
                D=D+30;
                b();
                c();
                D=D+50;
                C[keccak256(abi.encodePacked(D))]=A;
                D=D-30;
                A=A-20;
                a();
            }
            function b() public{
                C[keccak256(abi.encodePacked(A))]=A;
            }
            function c() public{
                C[keccak256(abi.encodePacked(A))]=A;
                C[keccak256(abi.encodePacked(D))]=A;
            }
        }
