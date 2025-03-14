pragma solidity ^0.8.0;
contract SemanticBc8 {
    uint public constant variableB = 0;
    function test2() public pure returns (uint) {
        uint var1 = 0;
        var1;
    }
}

pragma solidity ^0.8.0;
contract DuplicatedBc9 {
    uint public constant variableB = 0;
    function test() public pure {
        uint var1 = 0;
        var1;
    }
    function test2() public pure {
        uint var2 = 0;
        var2;
    }
}
