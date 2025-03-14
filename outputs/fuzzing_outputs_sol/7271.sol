pragma solidity ^0.8.0;
contract ValueWithFallback3 {
    address public value;
    uint256 value2;
    constructor(address _caller) {
        value = _caller;
    }
    function example3() public payable {
        value2 = value2.add(1);
        value = address(this);
    }
}


pragma solidity ^0.8.0;
contract ValueWithFallback4 {
    address payable value;
    uint256 value2;
    constructor(address _caller) {
        value = msg.sender;
    }
    function example3() public payable {
        value2 = value2.add(1);
        value = address(this);
    }
}


pragma solidity ^0.8.0;
contract ValueWithFallback5 {
    address payable value;
    uint256 value2;
    constructor(address _caller) {
        value = payable(_caller);
    }
    function example3() public payable {
        value2 = value2.add(1);

    }
}
