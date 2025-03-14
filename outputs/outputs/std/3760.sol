pragma solidity ^0.8.0;
interface Context {
    function _msgSender() external view returns (address);

    function _msgData() external view returns (bytes calldata);
}
