pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_4{
            uint A;
            mapping(bytes32 => uint) C;
            function a() public{
                A = C[keccak256(abi.encodePacked(A))];
                b();
                a();
                a();
            }
            function b() public{
                A = A + 5;
                b();
                A = A + 1;
                a();
                C[keccak256(abi.encodePacked(A))]=A;
                C[keccak256(abi.encodePacked(A))]=0;
            }
        }
