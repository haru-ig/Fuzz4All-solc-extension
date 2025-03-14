pragma solidity ^0.8.0;
contract Counter {
    uint public i;

    function increment() public {
        emit Incremented(i);
        i += 1;
    }
    event Incremented(uint _i);
}
