pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() pure internal {
        Incrementer.increment_internal();
    }

    function increment() pure internal {
        Incrementer.increment_internal();
    }
}
