pragma solidity ^0.8.0;
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v3.3.0/contracts/utils/introspection/ERC165.sol";
contract ERC165 {
    bytes4 internal constant _INTERFACE_ID_ERC165 = 0x165717a7;
    bytes4 internal constant _INTERFACE_ID_ERC721 = 0x80ac58cd;
    bytes4 internal constant _INTERFACE_ID_ERC721Enumerable = 0xe9b86991;
    bytes4 internal constant _INTERFACE_ID_ERC721Metadata = 0x5b5e139f;


    mapping(bytes4 => bool) private _byId;

    constructor () { }


    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return _byId[interfaceId];
    }


    function tokenOfOwnerByIndex(address contractOwner, uint256 tokenId) public view virtual override returns (uint256) {
        bytes4 interfaceId = _INTERFACE_ID_ERC721Enumerable;
        _requireTokenExists(tokenId);


        return tokenId;
    }


    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply();
    }


    function tokenByIndex(uint256 index) public view virtual override returns (uint256) {
        bytes4 interfaceId = _INTERFACE_ID_ERC
