pragma solidity ^0.8.0;
contract Mutated {
    function() external { }
    modifier modified() { }
}

pragma solidity ^0.8.0;
contract MutatedFallback {
    constructor(address _to) { }
    receive() external payable {
        Mutation(msg.data);
    }
    receive() external value() {
        Mutation(msg.data);
    }
    receive() external immutable {
        Mutation(msg.data);
    }
    receive() external nonpayable {
        Mutation(msg.data);
    }
}
