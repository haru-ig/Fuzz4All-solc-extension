pragma solidity ^0.8.0;
contract SolidityAssemblyExampleModifier {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public z;
    address public e;
    address public f;
    mapping (address => uint) public g;

    uint modifier modifier() pure {
        return 0;
    }

    modifier modifier_function() {
        return 75;
    }

    modifier modifier_mapping() {
        c += 1000;
        return 55;
    }

    modifier modifier_mapping_function() {
        return 333;
    }

    modifier modifier_memory() {
        b += 1000;
        return 555;
    }

    modifier modifier_memory_function() {
        return 5000;
    }

    modifier modifier_assignment() {
        a += 7208;
        return 545;
    }

    uint modifier modifier_storage() {
        z += 7890;
        return 45345;
    }

    modifier modifier_storage_function() {
        d += 7834;
        return 627;
    }

    modifier modifier_storage_memory() {
        return 105981;
    }

    modifier modifier_storage_memory_function() {
        c += 103874;
        return 67900;
    }

    modifier modifier_empty() {
        return 0;
    }

    uint modifier modifier_readonly() {
        return 0;
    }

    uint modifier modifier_readonly_function() {
        return 22;
    }

    modifier modifier_readonly_memory() {
        return 0;
    }

    modifier modifier_readonly_memory_function() {
        d += 1000;
        return 0;
    }

    modifier modifier_readonly_ assignment() {
        return 0;
    }

    uint modifier modifier_readonly_storage() {
        return 0;
    }

    uint modifier modifier_readonly_storage_function() {
        return 5;
    }

    modifier modifier_readonly_storage_memory() {
        return 0;
    }

    modifier modifier_readonly_storage_memory_function() {
        return 0;
    }

    constructor(uint Z) public {
        a += Z;
        b += Z + 1
