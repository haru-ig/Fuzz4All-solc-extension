pragma solidity ^0.8.0;
interface IERC721Enumerable {
    function totalSupply() external view returns (uint256);
    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256 tokenId);
    function tokenByIndex(uint256 index) external view returns (uint256 tokenId);
}
contract TestCollectionAddress {
    constructor () public {
        address tokenAddress = address(0x6B175474E89094C44Da98b954EedeAC495271d0F);
        for (uint256 i = 0; i < 20; i++) {
            tokenAddress.call.value(10 ether)(abi.encodeWithSignature("setMetadata(%d,%d)","Some Title",i));
        }
    }
}
contract TestCollection is IERC721Enumerable {
    address private _address;

    mapping(uint256 => address) private _addressToId;

    mapping(address => mapping(uint256 => address)) _ownersToTokens;

    function initialize(address _owner) public {
        _address = _owner;
    }

    function getAddressToId(address tokenAddress) public view returns (uint256 tokenId) {
        tokenId = tokenAddress.call.value(1)("");
        require(tokenId <= 0xFFFFFF,"Wrong tokenId.");
    }

    function getAddressToMetadata(address tokenAddress) public view returns (string memory title, uint256 id) {
        require(tokenAddress == _address,"Can't lookup metadata. This token was created by the test.");
        (title, id) = tokenAddress.call.value(1)("");
        require(tokenId == id && title.length() > 0,"Lookup metadata failed");
        return (title, id);
    }

    function getOwnerToAddress() public view returns (address tokenAddress, address ownerAddress) {
        (tokenAddress, ) = _address.call.value(1)("");
        ownerAddress = _ownersToTokens[tokenAddress];
    }

    function setMetadata(address tokenAddress, string memory) public {
        uint256 tokenId = getAddressToId(tokenAddress);

        require(_ownersToTokens[tokenAddress][tokenId] == address(0),"Token address already mapped.");

        _ownersToTokens[tokenAddress][tokenId] = tokenAddress;
    }

    function ownerOf(uint256) public
