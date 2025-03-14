pragma solidity ^0.8.0;
contract MixedContactsExample509 {
    uint128 value_a;
    uint128 value_b;
    uint128 value_c;
    address sender_a;
    address sender_b;
    address sender_c;


    function mutateA() external {
        value_a += 200;
    }

    function moreOperationsA() external {
        sender_a.sendValue(value_a);
        value_a += 100;
    }

    function mutateB() external {
        value_b -= 200;
    }

    function moreOperationsB() external {
        sender_b.sendValue(value_b);
        value_b += 30;
    }

    function mutateC() external {
        value_c -= 30;
    }

    function moreOperationsC() external {
        sender_c.sendValue(value_c);
        value_c -= 10;
    }
}
