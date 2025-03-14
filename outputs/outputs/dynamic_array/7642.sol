pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_8{
            uint A;
            mapping( bytes32 => uint) C;
            bytes32 S;
            modifier a() { A = 2; S = S + S; _; }
            constructor() public { a(); }
            function f() public{
                C[keccak256(abi.encodePacked(A))] = A + 1;
                C[keccak256(abi.encodePacked(A))] += 1;
                a();
            }
            function g() public{
                a();
                C[keccak256(abi.encodePacked(A))] = C[keccak256(abi.encodePacked(A))];
                C[keccak256(abi.encodePacked(A))] += 1;
                a();
            }
        }


pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_9{
            uint A;
            mapping( bytes32 => uint) C;
            mapping( bytes32 => uint) D;
            constructor() public { D[keccak256(abi.encodePacked(0))] = 2; A = 2; C[keccak256(abi.encodePacked(A))] = A + 1; C[keccak256(abi.encodePacked(A))] += 1; D[keccak256(abi.encodePacked(0))] = 3; }
            function h() public { a(); }
            function i() public { a(); }
            function j() public { C[keccak256(abi.encodePacked(A))] = C[keccak256(abi.encodePacked(A))]; D[keccak256(abi.encodePacked(0))] = 3; a(); }
            function k() public { a(); c(); }
            function l() public { b(); D[keccak256(abi.encodePacked(0))] = 4; c(); }
            function p() public { i(); A = 5; a(); D[keccak256(abi.encodePacked
