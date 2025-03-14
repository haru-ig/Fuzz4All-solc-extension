pragma solidity ^0.8.0;
interface TokenReceiver {
    function receiveApproval(address _operator, uint256 _amount, address _from, bytes calldata _data) external;
}
