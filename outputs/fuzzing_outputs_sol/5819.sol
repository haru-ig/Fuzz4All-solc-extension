pragma solidity ^0.8.0;
contract Mutator {
    uint a;
    function test() internal {
        a = a - 1;
        a = a * 2;
        a = a / 2;
        a = a * 10;
        a = a + 10;
        a = a / 2;
    }
}


pragma solidity ^0.8.0;
contract MutatedMutator is Mutator {
    constructor() {
    }
    uint a;
    function test() public payable {
        test();
        a = 10;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    uint256 a;
    function test() public {
        test();
        a = 20;
    }
    function callMutator() public {
        MutatedMutator mutator;
        mutator.test();
    }
}
