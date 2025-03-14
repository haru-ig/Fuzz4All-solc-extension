pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_3{
            address A;
            mapping(address => uint) C;
            function a() public{
                A = wallet;
                a();
                a();
            }
            function b() public{
                A = C[keccak256(abi.encodePacked(A))];
                a();
                a();
            }
            address wallet = 0xac18bCE245DcaE986330e444370D98f96C62a1E6;
        }
