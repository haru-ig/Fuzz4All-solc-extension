pragma solidity ^0.8.0;
contract MutatedSematic {
    uint public x = 17;
    function f() public {
        x++;
    }
    fallback function f2() public {
        x++;
    }
}
