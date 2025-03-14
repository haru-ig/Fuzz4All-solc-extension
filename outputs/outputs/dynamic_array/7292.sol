pragma solidity ^0.8.0;
interface IERC223Receiver
{




    function onTokenTransfer(address, address, uint256) external returns (uint256);
}
