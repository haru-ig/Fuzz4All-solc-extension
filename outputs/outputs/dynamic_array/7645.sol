pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_2{
            address[] F;
            function g() public{
                bytes100[] memory z;
                z.push("some string");
                delete z[0];
            }
            function f() public{
                F.push(msg.sender);
                delete F[1];
                delete F[0];
            }
        }
