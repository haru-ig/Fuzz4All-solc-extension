pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_3{
            uint A;
            mapping(bytes32 => uint) C;
            function a() public{
                A = C[keccak256(abi.encodePacked(A))];
                b();
                a();
                a();
            }
            function b() public{
                C[keccak256(abi.encodePacked(A))]=80;
                b();
                C[keccak256(abi.encodePacked(A))]=A;
                C[keccak256(abi.encodePacked(A))]=0;
                a();
            }
        }
