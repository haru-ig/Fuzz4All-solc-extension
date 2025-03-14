pragma solidity ^0.8.0;

interface IERC677TokenReceiver {
    event TransferSingle(address indexed operator, address indexed from, address indexed to, uint256 indexed tokenId);
    event TransferBatch(
        address indexed operator,
        address indexed from,
        address[] indexed to,
        uint256[] indexed tokenId,
        bytes memory data
    );
    function onERC677Received(address operator, address from, uint256 tokenId, bytes calldata data) external returns(bytes4);
}
