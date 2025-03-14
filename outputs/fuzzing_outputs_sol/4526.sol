pragma solidity ^0.8.0;
contract SemanticDifferent {
    function mutate() public pure {
    }
}
pragma solidity ^0.8.0;
contract SemanticDifferent3 {
    function mutate() public pure {
    }
}

pragma solidity ^0.8.0;
contract SemanticDifferent4 {
    address[] public addrs;

    function mutate() public pure {
        addrs.push(msg.sender);
    }
}
contract SemanticDifferentCall {
    function mutate() public pure {
        (bool success, ) = msg.sender.call{value: msg.value}('');
        assert(success);
    }
}
contract SemanticDifferentCall2 {
    function mutate() public pure {
        bool success = msg.sender.call.value(msg.value)('');
        assert(success);
    }
}
contract SemanticDifferentCall3 {
    function mutate() public pure {
        (bool success, ) = msg.sender.call{value: msg.value}('');
        require(success);
    }
}
contract SemanticDifferentInterface {
    function mutate() public pure {
    }
}
contract SemanticDifferentInterface2 {
    function mutate() public pure {
        (bool success, ) = msg.sender.ping.value(msg.value)('');
        require(success);
    }
}
contract SemanticDifferentInterface3 {
    fallback function() public pure {
    }
}
contract SemanticDifferentInterface4 {
    function mutate() public pure {
        (bool success, ) = msg.sender.send(msg.value);
        require(success);
    }
}
contract SemanticDifferentInterfaceFallback {
    function mutate() public pure {
    }
}
contract SemanticDifferentInterfaceFallback2 {
    function mutate() public pure {
        (bool success, ) = msg.sender.send(msg.value);
        require(success);
    }
}
contract SemanticDifferentInterfaceFallback3 {
    fallback function() public pure {
    }
}
contract SemanticDifferentInterfaceFallback4 {
    fallback function() public pure {
        (bool success, ) = msg.sender.send(msg.value);
        require(success);
    }
}

pragma solidity ^0.8.0;
contract FallbackFunc {
    function fallback() public pure {

    }
}
@title My Test Contract


contract TestContract {
    address public immutable sender;

    constructor(address sender_) public {
        sender = sender_;
    }

    function func() public {
        address fallbackAddr;


        _;


        fallbackAddr = FallbackFunc.selector;
            bytes memory encodedFallback = abi.encode(fallbackAddr);
            bytes32 hash = 0x2398573151
