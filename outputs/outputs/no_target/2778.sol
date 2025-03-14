pragma solidity ^0.8.0;
contract sn_solidity {
    uint public value;
    constructor(uint _value) public {
        value = _value;
    }
    function multiply(uint _value) public pure {
        value *= _value;
    }
}

pragma solidity ^0.8.0;
contract sn_solidity {
    address public caller;
    constructor() public {
        caller = msg.sender;
    }
    function foo() public {
        require(msg.sender == caller, "foo caller expected");
    }
    function bar() public payable {
        caller.call{value: msg.value}("");
    }
}

pragma solidity ^0.8.0;
contract sn_solidity {
    address public caller;
    constructor() public {
        caller = msg.sender;
    }
    function foo() public {
        require(msg.sender == caller, "foo caller expected");
    }
    function bar() public {
        require(msg.value == 0, "Value expected");
        transfer(_to, 0);
    }
    function transfer(address _to, uint256 _value) public {
        _to.call{value: _value}(new bytes(0));
    }
}
