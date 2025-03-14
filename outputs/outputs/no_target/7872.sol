pragma solidity ^0.8.0;

contract TestMutator {
    function set(address);
}
address payable caller;
address payable reciever;
address payable nonexistentReceiver;
function simple1() {
    caller.set.value(1 ether)(address(9));
}


contract TestMutator {
    function set(uint256 newUint) public payable {
        if(msg.value <= 0) { revert(); }
        caller.set;
        caller.set;
        reciever = caller.set;
        caller = _;
        caller = this.set;
        nonexistentReceiver = _;
        caller.set.value(msg.value)();
        payable(_).set(msg.value);
    }
}
