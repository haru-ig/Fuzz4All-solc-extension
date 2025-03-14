pragma solidity ^0.8.0;
interface IERC677Token {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);


    function supportsInterfaceCall(bytes4 interfaceId, bytes memory data) external view returns (bool success) {
        return IERC677TokenReceiver(msg.sender).onERC677Received.selector == interfaceId && IERC677TokenReceiver(msg.sender).onERC677Received(operator(), operator(), tokenId(), data);
    }
}
