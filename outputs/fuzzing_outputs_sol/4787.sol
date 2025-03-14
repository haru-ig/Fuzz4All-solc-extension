pragma solidity ^0.8.0;
contract Mutate2 {
    function update() public pure {
       uint oldInt = 42;
       oldInt += 42;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    uint public value;
    uint public fallbackCalled;

    fallback_function() payable public {
       fallbackCalled += 1;
       value += msg.value;
    }

    receive() payable public {
    }

    fallback_function() public pure {
    }
}
