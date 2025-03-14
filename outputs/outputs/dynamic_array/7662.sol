pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_5{
            uint A;
            function a() public{
                A = 678;
                b();
                a();
                A = A + 200;
                a();
                A = A + 42;
                a();
                A = A+11;
                A = A+9;
            }
            function b() public{
                A=A-9;
                A=A+1;
                A=A+57;
                A=A+57;
                C[keccak256(abi.encodePacked(A))]=A;
                c(keccak256(abi.encodePacked(A)));
            }
            function c(bytes32 x) public{
                c(x);
                A=A+1;
                c(x);
            }
        }
