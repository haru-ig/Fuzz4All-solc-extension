pragma solidity ^0.8.0;
interface IERC721Receiver {
    function onERC721Received(address, address, uint256, bytes) external returns (bytes4 response);
}

pragma solidity ^0.8.0;
interface IERC165 {
    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}
