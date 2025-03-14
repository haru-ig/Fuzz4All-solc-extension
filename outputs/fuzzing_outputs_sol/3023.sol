pragma solidity ^0.8.0;
interface CallerERC6507Receiver {
    function onERC6507Received(
        address operator,
        address from,
        address to,
        uint256 amount0,
        uint256 amount1,
        bytes calldata data
    ) external returns (bytes4);
}
