pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() internal pure {
        Incrementer.increment();
    }
    function increment() public pure {
        Incrementer.increment_internal();
    }
}
