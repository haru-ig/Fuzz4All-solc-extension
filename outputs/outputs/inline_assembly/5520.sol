pragma solidity ^0.8.0;
contract ImmutableBc72x {
    uint public constant variableB = 0;
    uint public constant test() public returns (uint) {
        uint var1 = 0;
        var1 = var1;
        return var1;
    }
}

pragma solidity ^0.8.0;
contract ImmutableBc73x {
    uint public constant variableB = 0;
    function set() public {
        uint var1 = 0;
        var1;
    }
    function test() public returns (uint) {
        uint var1 = 0;
        var1 = var1;
        return var1;
    }
}
