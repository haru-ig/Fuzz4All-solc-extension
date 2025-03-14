pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_8{
            uint A;
            uint[] C;
            uint Csize;
            function a() public{
                A = 1;
                uint x = 1 + 1;
                C[1] = x + Csize;
                C[0] += x + Csize;
                a();
            }
            function b() public{
                A = A + 1;
                Csize = 2 * 11;
                C = new uint[](Csize);
                A = A + 1;
                C[Csize-1] = A + 1;
                A = C[Csize-1];
                a();
            }
        }
