pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_8{
            uint A;
            mapping( bytes32 => uint) C;
            function a() public{
                A = 1;
                C[keccak256(abi.encodePacked(A))] = A + 1;
                A = C[keccak256(abi.encodePacked(A))] - 1;
                a();
            }
            function b() public{
                A = C[keccak256(abi.encodePacked(A))];
                A = C[keccak256(abi.encodePacked(A))] - 1;
                a();
            }
        }
