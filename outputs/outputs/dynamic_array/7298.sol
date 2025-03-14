pragma solidity ^0.8.0;
interface IVanillaERC223Receiver
{
    function onTokenTransfer(address from, address from2, uint256 amount) external returns (uint256);
}
