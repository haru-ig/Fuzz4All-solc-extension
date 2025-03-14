pragma solidity ^0.8.0;
contract Incrementer2 {
    function increment_internal() pure internal {
        increment_internal_sol();
    }
    function increment() pure internal {
        increment_internal();
    }
}
