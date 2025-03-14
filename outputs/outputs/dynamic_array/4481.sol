pragma solidity ^0.8.0;


contract MutatedWithOld {
    function testPrevious() public returns (bytes memory) {
    }
}
pragma solidity ^0.8.0;

contract MutatedWithOld {
    variable bytes a;
    bytes32 test;

    constructor (bytes calldata _a) public { a = _a; }
    constructor (bytes memory _a) public { a = _a; }

    fallback () external {
    }
}
