pragma solidity ^0.8.0;
contract Counter {
    uint public i;
    function increment() public {
        i += 1;
        emit Incremented(i);
    }
    event Incremented(uint _i);
}
