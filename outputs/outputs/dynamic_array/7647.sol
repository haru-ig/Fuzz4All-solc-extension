pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_2{
            uint A;
            mapping( bytes32 => uint) C;
            function a() public{
                A = C[keccak256(abi.encodeToMemory("1".repeat(192)))];
                a();
                a();
            }
        }
