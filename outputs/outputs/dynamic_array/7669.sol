pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_2{
            uint A;
            mapping(bytes32 => uint) C;
            function a() public{
                A = C[keccak256(abi.encodePacked(A))];
                a();
                a();
                b();
                a();
            }
            function b() public{
            uint B = B+3;
            uint A = B+6;
            A = 8*A;
            }
        }
