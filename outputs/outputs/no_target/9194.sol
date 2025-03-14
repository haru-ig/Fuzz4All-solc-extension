pragma solidity ^0.8.0;
contract mutated_abi6 {
    uint256 constant constant_variable = 42;
    function f() public view {
        uint42 constant constant_variable2 = constant_variable + 2;
        uint42 constant constant_variable3 = constant_variable2 + 2;
    }
}

contract mutated_abi6x {
    uint256 constant constant_variable = 42;
    function f() public view {
        uint16 constant constant_variable2 = constant_variable + 1; <!-- New error. Conversion from uint16 to uint256 requires two conversions even though no overflows and no underflow will occur.-->
        uint16 constant constant_variable3 = constant_variable2 + 1;
    }
}
