pragma solidity ^0.8.0;
contract boring_semantically_equivalent extends boring {
    function test() public {
        assert(43+0 == constant_variable);
        assert(constant_variable+43 == 86);
    }
}
