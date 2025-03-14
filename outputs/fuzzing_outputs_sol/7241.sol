pragma solidity ^0.8.0;
contract ValueMutated {
    address public _valueFromCaller;
    receive () public payable {
        _valueFromCaller = msg.sender;
    }
    function example7() public {
        require(_valueFromCaller!= address(0), "!empty! address(0)");
    }
}
