pragma solidity ^0.8.0;
import "./Caller4.sol";
contract CallFallback {
    address payable _caller;

    constructor() {
        _caller = msg.sender;
    }

    receive() external payable {}
    function callFallback(address payable recipient, uint256 amount)
    external {
        require(_caller.call{value: amount}());
    }
}
