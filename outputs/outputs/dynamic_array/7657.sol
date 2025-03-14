pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_4{
            uint A;
            mapping(bytes32 => uint) C;
            function a() public{
                A = C[keccak256(abi.encodePacked(A))];
                a();
                a();
                b();
            }
            function b() public{
                C[keccak256(abi.encodePacked(A))]=80;
                a();
                C[keccak256(abi.encodePacked(A))]=A;
                C[keccak256(abi.encodePacked(A))]=0;
            }
            function c() public{
                b();
                b();
                b();
                b();
            }
        }
