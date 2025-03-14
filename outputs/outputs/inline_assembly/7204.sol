pragma solidity ^0.8.0;

interface IERC721Receiver {

        function onERC721Received(address operator, address from, uint256 tokenId, bytes memory data) external returns(bytes4);

    function onERC721Received(address operator, address from, uint256 tokenId, bytes memory data)
            external
            returns(bytes4) {
        return onERC721Received.value(msg.value)(operator, from, tokenId, data);
    }


}
