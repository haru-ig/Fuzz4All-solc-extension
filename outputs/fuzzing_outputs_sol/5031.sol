pragma solidity ^0.8.0;
contract Mutator {
    function mutate() public pure {
        return;
    }
}

contract Caller {
    function __Mutator_call(uint a, uint b) public pure {
        uint c = a + b;
        if (c >= a) {



            Fallback mutator = Fallback(msg.sender);
            mutator.mutate();
        }
    }
}
