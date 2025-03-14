pragma solidity ^0.8.0;
contract Counter {
    uint public i;
    function increment() public returns (bool) {
        emit Incr();
        return i < 2;
    }
    event Incr();
}

pragma solidity 0.8.0;
address public owner;
uint public i;
contract Counter {
    function increment() public {
        i += 1;
    }
}
