pragma solidity ^0.8.0;
interface IERC721Enumerable {
    function totalSupply() external view returns (uint256);
    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256 tokenId);
    function tokenURI(uint256 tokenId) external view returns (string memory);
}


contract Array {
    uint256 public arrLength = 0;
    uint256[] private uint256_Array;

    modifier isLengthValid(uint256 len) {
        require(len <= 2**16, "Length exceeded uint16 limit.");
        if (uint256_Array.length < len) {
            uint256_Array = new uint256[](len);
        }
        uint256_Array[arrLength] = _value_;
        arrLength++;
        _;
    }

    function balanceOf() public view returns (uint256) {
        return uint256_Array.length;
    }

    function ownerOf(uint256 tokenId) public view isLengthValid(uint256_Array.length) returns (address) {
        require(tokenId < arrLength && tokenId >= 0, "Token not found");
        return IERC721(uint256_Array[tokenId]).ownerOf(tokenId);
    }

    function approve(address to, uint256 tokenId) public returns (bool) {
        require(tokenId < arrLength && tokenId >= 0, "Token not found");
        IERC721(uint256_Array[tokenId]).approve(to, tokenId);
        return true;
    }

    function transferFrom(address from, address to, uint256 tokenId) public returns (bool) {
        require(tokenId < arrLength && tokenId >= 0, "Token not found");
        IERC721(uint256_Array[tokenId]).transferFrom(from, to, tokenId);
        return true;
    }

    function transfer(address to, uint256 tokenId) public returns (bool) {
        require(tokenId < arrLength && tokenId >= 0, "Token not found");
        IERC721(uint256_Array[tokenId]).transfer(to, tokenId);
        return true;
    }

    function safeTransferFrom(address from, address to, uint256 tokenId) public {
        safeTransferFrom(from, to, tokenId, "");
    }

    function safeTransferFrom(address from, address
