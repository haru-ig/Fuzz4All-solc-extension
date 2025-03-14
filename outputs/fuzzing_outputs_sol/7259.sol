pragma solidity ^0.8.0;
contract ValueWithFallback3 {
    address public valueToCaller;
    constructor(address _caller) {
        valueToCaller = _caller;
    }
    function () public payable {
        emit Payed(valueToCaller, msg.value);
    }
    fallback() external payable {}
}
