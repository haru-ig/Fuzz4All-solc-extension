pragma solidity ^0.8.0;
contract IERC1155 {
    function balanceOf(address who, uint id) virtual public view returns (uint);
    function balanceOfBatch(address[] memory who) virtual public view returns (uint[] memory);
    function transferFrom(address from, address to, uint256 tokenId) virtual public;
    function approve(address to, uint256 tokenId) virtual public;
    function allowance(address owner, address spender) virtual public view returns (uint);
}
contract IERC721 {
    function balanceOf(address owner) virtual public view returns (uint256);
    function transferFrom(address from, address to, uint256 tokenId) virtual public;
    function approve(address to, uint256 tokenId) virtual public;
    function transfer(address to, uint256 tokenId) virtual public;
    function approveAndCall(address to, uint256 tokenId, bytes memory data) virtual public returns (bytes memory);

    function supportsInterface(bytes4 interfaceId) virtual public view returns (bool);
}
