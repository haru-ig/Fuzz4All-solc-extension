pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_A{
            mapping(bytes32 => uint) X = mapping(bytes32 => uint) storage;
        function B() public { X[keccak256(abi.encodePacked(X[keccak256(abi.encodePacked(B()))]))] = 90 + 60; }
        function B2() public { assert(X[keccak256(abi.encodePacked(B()))] == 90 + 60); }
        function B_to_a() public { delete X[keccak256(abi.encodePacked(B_to_a()))]; }
        function b() public { assert(X[keccak256(abi.encodePacked(b()))] == 90); }
        function b_to_B2() public { X[keccak256(abi.encodePacked(b_to_B2()))] = 957; }
    }
