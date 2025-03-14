pragma solidity ^0.8.0;
contract MutatingContract {
    uint256[] private array;
    function bar() public pure {
        array[0] += 1;
    }
    function foo() public pure {
        array[array.length] = 3;
        array[1] = 10;
        array[25] = 2520;
    }
}
