pragma solidity ^0.8.0;
interface IERC677TokenReceiver {
    function onERC721Received(
        address indexed operator,
        address indexed from,
        uint256 indexed tokenId,
        bytes calldata data
    ) external returns(bytes4);
}
