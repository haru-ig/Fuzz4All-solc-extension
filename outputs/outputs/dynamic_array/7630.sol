pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_6{
            uint A;
            function f() public{
                A = 1;
                a();
                A = 10;
                a();
            }
        }
