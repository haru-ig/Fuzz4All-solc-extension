pragma solidity ^0.8.0;

contract Incrementer {
    uint internal internal_counter = 0;
    uint public external_counter = 0;

    function increment() public {
        internal_counter = Incrementer.increment_internal();
        external_counter = Incrementer.increment_external();
    }
    function read() public view returns(uint,uint) {
        return (internal_counter, external_counter);
    }
}
