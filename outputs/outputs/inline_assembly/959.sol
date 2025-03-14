pragma solidity ^0.8.0;
contract Incrementer2 {
    function increment_internal() public pure {
        increment_internal();
    }
    function increment() public pure {
        increment_internal();
    }
}
