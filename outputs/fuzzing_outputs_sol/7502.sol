pragma solidity ^0.8.0;
contract FallbackModifierFallbackReceiver {
    uint x;
    function() payable public {
        x = msg.value;
    }
}

pragma solidity ^0.8.0;
contract FallbackReceiver {
    uint public value;
    function() external payable {
        value = msg.value;
    }
}

pragma solidity ^0.8.0;
contract LowLevelCall {
    uint public value;
    function() public pure {
        value = msg.value;
    }
    function payable_receive() public pure {
        value = msg.value;
    }
}
contract SimpleContract is FallbackModifier, FallbackModifierFallbackReceiver, LowLevelCall {
    function setOne(uint i) public payable {
        x = i;
    }
}
