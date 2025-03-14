pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_3{
            uint A=100;
            function a() public{
                C[keccak256(abi.encodePacked(A))] =A;
                A = A -1;
                A = A;
                A=A+120;
                B[keccak256(abi.encodePacked(A))] =A;
            }
            function b() public{
                A=C[keccak256(abi.encodePacked(A))];
            }
        }
