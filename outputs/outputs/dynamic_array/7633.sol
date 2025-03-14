pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_6{
            uint AB;
            function a(uint x) public{
                if(x == 0){
                    AB = A;
                }
                else{
                    c();
                }
            }
            function c() public{
                AB = A;
            }
        }
