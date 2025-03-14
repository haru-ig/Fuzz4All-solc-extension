pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_1{
            uint A;
            function a() public{
                A = 0;
                uint b = 5;
                a();
                b = 10;
                a();
            }
        }

pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_2{
            uint A;
            function a() public{
                A = 0;
                uint[] storage array = new uint[](5);
                array[0] = 5;
                a();
                array[1] = 10;
                a();
            }
        }
