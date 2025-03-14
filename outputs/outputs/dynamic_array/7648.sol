pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_2{
            uint A;
            mapping( bytes32 => uint) C;
            function a() public{
                A = 1;
                C[keccak256(abi.encodePacked(A))] = 10;
                a();
                a();
            }
            function b() public{
                A = 1;
                C[keccak256(abi.encodePacked(A))] = 20;
                a();
                a();
            }
        }
