pragma solidity ^0.8.0;
contract SimpleExample3 {
    address public _sender;
    address public _receiver;
    constructor() public {
        _sender = msg.sender;
    }
    function f(uint256 _amount) public {
        _receiver = msg.sender;
        receiveValue(_amount);
    }
    function receiveValue(uint256 _amount) internal {
        if (_amount > 10000) {
            revert();
        } else {
            _receiver.send(_amount);
        }
    }
}
