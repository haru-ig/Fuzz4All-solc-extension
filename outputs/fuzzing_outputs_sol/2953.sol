pragma solidity ^0.8.0;
contract MutatedCaller {
    address payable _caller;
    function pay_fallback() public payable {
        require(msg.value == 0);
        require(block.timestamp > 0);
        require(msg.sender!= address(0));
        _caller = address(msg.sender);
    }
    function mut_fallback() public {
        _caller.call{value: 11}("");
    }
    fallback() external {
        emit MutCallerFallback();
        _caller.call{value: 11}("");
    }
    event MutCallerFallback();
}
