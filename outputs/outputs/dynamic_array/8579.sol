pragma solidity ^0.8.0;
contract FixedTestReproduction {
    struct Object {
        uint256 data;
    }
    constructor(uint data) {}
    function mutatorTest() public {
        uint data = 85;
        uint256 a = 1;
        Object memory aObject;

        aObject.data = data;

        a = aObject.data + 1;
    }
}




contract ExtensionBugReproduction {
    uint public immutable x;
    constructor(uint _x) {
        emit Extension(_x);
    }
    function emitExtension(uint _x) public view {}
}
