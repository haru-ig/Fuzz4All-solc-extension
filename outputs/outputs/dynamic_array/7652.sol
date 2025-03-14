pragma solidity ^0.8.0;
contract Test17_semanticallyEquivalent_1{

            mapping(bytes32 => uint) D;
            function a() public {
                D[keccak256(abi.encodePacked(A, B))] = 1;
            }
            uint8 constant B = 1;
        constructor() public{        }
        function b() public{
        }
    }
