pragma solidity ^0.8.0;
contract Test05_semanticallyEquivalent_3{
            bytes32[3] public C;
            function a() public {
                C[0] = A;
            }
            function b() public {
                C[1] = B;
            }
            function c() public {
                C[2] = C[0];
            }
            function d() public {
                B = B;
                uint _temp = B;
            }
            function e() public {
                C[0] = C[0];
            }
            function f() public {
                C[1] = C[1];
            }
            function g() public {
                C[2] = C[2];
                C[1] = C[2];
            }
        }
