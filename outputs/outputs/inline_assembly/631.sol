pragma solidity ^0.8.0;
contract MyContract {
    function testMethod() public pure {
    }
}
contract AnotherMutatedContract is MyContract {
    function testMethod() public pure {
    }
}
contract InteriorMutatedContract is AnotherMutatedContract {
    function testMethod() public pure {
    }
}
