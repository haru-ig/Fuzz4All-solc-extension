pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_1{
            uint A;
            mapping( bytes32 => uint) C;
            function a() public{
                A = 1;
                a();
                a();
            }
            function b() public{
                A = C[keccak256(abi.encodePacked(A))];
                a();
                a();
            }
        }
