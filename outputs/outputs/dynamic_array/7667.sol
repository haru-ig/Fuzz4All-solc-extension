pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_2{
            uint8  A;
            mapping(uint256 => uint8) D;
            function a() public{
                A = D[keccak256(abi.encodePacked(A))];
                b();
                a();
                a();
            }
            function b() public{
                A=A+80;
                b();
            }
        }
