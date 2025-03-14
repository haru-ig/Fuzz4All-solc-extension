pragma solidity ^0.8.0;
contract ContractReceiver {
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes memory data
    ) public pure returns (bytes4);
}
