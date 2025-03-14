pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_4{
            uint[3] A;
            function a() public{
                A = [A[2]];
                a();
                a();
            }
        }
