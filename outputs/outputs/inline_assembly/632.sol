pragma solidity ^0.8.0;
contract Mutator {
    function testMethod() public {
        return;
    }
}
contract AnotherMutator {
    function testMethod() external {
        return;
    }
}
contract InteriorMutator {
    function testMethod() internal {
        return;
    }
}
