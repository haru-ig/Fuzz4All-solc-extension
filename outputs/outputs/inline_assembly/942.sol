pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() pure internal {
        Incrementer.increment();
    }
    function increment() pure internal{
        Incrementer.increment_internal();
    }
}
