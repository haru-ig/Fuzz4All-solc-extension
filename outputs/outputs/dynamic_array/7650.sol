pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_3{
            uint[4] B;
            function a() public{
                B[0] = 1;
                a();
                a();
            }
            function b() public{
                B[1] = B[2];
                a();
                a();
            }
            function c() public{
                c();
            }
            function d() public{
                B[3] = 2;
            }
        }
