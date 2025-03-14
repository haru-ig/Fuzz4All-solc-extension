pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_2{
            uint A=100;
            mapping(bytes32 => uint) C;
            function a() public{
                A = C[keccak256(abi.encodePacked(A))];
                b();
                a();
                a();
            }
            function b() public{
                A=A+120;
                b();
            }
        }
