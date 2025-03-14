pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
contract C {
    TokenMetadata internal metadata;
    function g() public pure returns (uint) {
        return metadata.tokenId;
    }
}
