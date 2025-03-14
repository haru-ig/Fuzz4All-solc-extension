pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_6{
            uint A1;
            uint A2;
            uint A3;
            uint A4;

            function a() public{
                a();
                a();
                a();
                a();
            }
            function sa() public{
                A1 += (10**uint(A1));
                A1 += (10**uint(A1));
                A1 += (10**uint(A1));
                A1 += (10**uint(A1));
            }
            function sb() public{
                A2 += (10**uint(A2));
                A2 += (10**uint(A2));
                A2 += (10**uint(A2));
                A2 += (10**uint(A2));
            }
            function sc() public{
                A3 += (10**uint(A3));
                A3 += (10**uint(A3));
                A3 += (10**uint(A3));
                A3 += (10**uint(A3));
            }
            function sd() public{
                A4 += (10**uint(A4));
                A4 += (10**uint(A4));
                A4 += (10**uint(A4));
                A4 += (10**uint(A4));
            }
        }
