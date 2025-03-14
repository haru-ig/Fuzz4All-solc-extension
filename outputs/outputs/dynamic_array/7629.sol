pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_5{
            uint A;
            function a() public{
                A = 1;
                a();
                A = 10;
                a();
            }
        }
