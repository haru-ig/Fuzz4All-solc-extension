pragma solidity ^0.8.0;
contract Arrays {
    uint public counter;
    function constructor_1() public {
        counter = 1;
    }
    function constructor_2() public {
        counter = 65535;
        revert("Counter Overflow 2");
    }
}
