pragma solidity ^0.8.0;
contract Incrementor {
    function increment_internal() {
        Incrementor.increment_internal();
    }
    function increment() pure internal {
        Incrementor.increment_internal();
    }
}
