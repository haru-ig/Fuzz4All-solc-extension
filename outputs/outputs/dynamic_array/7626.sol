pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_5{
            uint A;
            function a() public{
                A = 0;
                a();
                A = 0;
                a();
                A = uint(-1);
                a();
            }
        }
