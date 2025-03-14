pragma solidity ^0.8.0;
contract Value {
    function example1() public {
        msg.sender;
    }
}
pragma solidity ^0.8.0;
contract Caller {
    constructor() {}
    function example5() public payable {
        msg.sender;
    }
    receive () external payable {
        msg.sender;
    }
    function receiveNoFallthrough() public payable {}
}
pragma solidity ^0.8.0;
contract CallerFallthrough extends Caller {
    function receiveNoFallthrough() external payable {
        valueToReceiver(msg.value);
    }
}

pragma solidity ^0.8.0;
contract Example7 {
    function example2() public {}
    receive () external payable {
        valueToReceiver(msg.value);
    }
    receiveNoFallthrough () external payable {}
}
