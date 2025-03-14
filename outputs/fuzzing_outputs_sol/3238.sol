pragma solidity ^0.8.0;
contract Caller {
    function callLowLevelForReceiverWithFallback(uint256 amount)
        external
    {
        require(msg.value >= amount, 'amount > value');
        address old = address(this);
        address receiver = IERC20(address(0)).transferFrom(
            old,
            tx.origin,
            amount
        );
        emit Received(receiver, old);
    }

    event Received(address indexed receiver, address indexed originalReceiver);
}
