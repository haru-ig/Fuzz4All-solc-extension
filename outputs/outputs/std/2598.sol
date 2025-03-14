pragma solidity ^0.8.0;
contract ERC721TokenURI {


    string[] private _tokenURIs;

    constructor(){
        bytes16  mem_slot = 0xfe;

        return ();

    }


    function _setTokenURI(uint256 tokenId, string memory _newUri) internal {
        bytes32 mem_slot = keccak256(abi.encodePacked("*_tokenURI", tokenId));

        return ;

    }


function _tokenURI(uint256 tokenId) internal view returns(string memory){
        bytes32 mem_slot = keccak256(abi.encodePacked("*_tokenURI", tokenId));

        return (uint8ToHex(keccak256(abi.encodePacked("125*", mem_slot)), 16));
}
    function getTokenURI(uint256 tokenId) external view returns(string memory){
        return _tokenURI(tokenId);
    }
}
