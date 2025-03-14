pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2 {
    uint160 constant public value22 = 203;
    uint256 constant public value23 = 208;
    uint256 constant public value20 = 200;
    function test (address value21) public {
    }
}

pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v3 {
    struct A {
        uint256 constant value = 212;
    }
    function test () public {
    }
}

contract EquivalentAbiMutations_v4 {
    uint160 constant public value22 = 203;
    uint256 constant public value23 = 208;
    uint256 constant public value20 = 200;
    function testmutated1(address value21) public {
        EquivalentAbiMutations_v1 testContract = EquivalentAbiMutations_v1.at(address(0));
        EquivalentAbiMutations_v2 testMutantContract = EquivalentAbiMutations_v2.at(address(0));
        testContract.test(value21);
        testContract.test(value21);
        testMutantContract.test(value21);
        A mutant = A(0);
        testMutantContract.test(value21);
        testMutantContract.test(value21);
    }
    function testmutated2(address value21) public {
        EquivalentAbiMutations_v1 testContract = EquivalentAbiMutations_v1.at(address(0));
        testContract.test(value21);
        EquivalentAbiMutations_v2 testMutantContract = EquivalentAbiMutations_v2.at(address(0));
        testMutantContract.test(value21);
        testMutantContract.test(value21);
        A mutant = A(0);
        testContract.test(value21);
        testContract.test(value21);
    }
    function constructor() public {
    }
}
