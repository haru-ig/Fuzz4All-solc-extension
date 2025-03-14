pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_13{
    uint A;
    uint B;
    uint C;
    function b() public {
                B = 0;
        A = 0;
                A = 1;
                B = 1;
        a();
        if (A!= B)
            revert();
        if (A!= B+1)
            revert();
                if (C!= 0)
                    revert();
        if (B!= 1)
            revert();
                A = 10;
                B = 20;
                a();
        if (A!= B)
            revert();
                while (B!= 30) {
                        B = 30;
                        C = 1;
                        a();
                        if (C!= 2)
                            revert();
                        B = 40;
                }
                if (B!= 40)
                    revert();
        if (C!= 0)
            revert();
                while (C!= 30) {
                        B = 40;
                        C = 2;
                        a();
                        if (C!= 2)
                            revert();
                        B = 50;
                }
                if (C!= 30)
                    revert();
                if (B!= 40)
                    revert();
                if (B!= 50)
                    revert();
                C = 3;
                a();
        if (C!= 3)
            revert();
                B = 40;
        if (B!= 50)
            revert();
                B = 30;
                a();
        if (A!= B)
            revert();
        if (A!= C+1)
            revert();
                while (C!= 60) {
                        A = 60;
                        B = 50;
                        C = 30;
                        a();
                        if (B!= 60)
                            revert();
                        if (A!= C+1)
                            revert();
                        if (B!= 50)
                            revert();
                        if (B!= 30)
                            revert();
                        if (A!= B)
                            revert();
                }
                if (B!= 60)
                    revert();
                if (C!= 30)
                    revert();
                if (C!= 60)
                    revert();
                if (B!= 40)
                    revert();
                while (B!= 60) {
                        B = 60;
                        C = 40;
                        a();
                        if (A!= 60)
                            revert();
                        if (C!=
