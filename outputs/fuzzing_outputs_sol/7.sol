pragma solidity ^0.8.0;
contract ContractFallback {

    event Fallback();


    event FallbackFrom(address from);

    event Receive(address recipient, uint256 amount);

    function () external payable {
        emit Fallback();
    }

    function receive() external payable {
        emit FallbackFrom(msg.sender);
        emit Receive(msg.sender, msg.value);
    }
}
