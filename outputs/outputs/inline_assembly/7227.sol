pragma solidity ^0.8.0;
contract IERC20Metadata {
    function name() virtual public view returns (string memory) { return ""; }
    function symbol() virtual public view returns (string memory) { return ""; }
    function decimals() virtual public view returns (uint8) { return 0; }
}

contract IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);
    function transfer(address to, uint256 value) virtual public returns (bool);
    function totalSupply() virtual public view returns (uint256);
    function balanceOf(address account) virtual public view returns (uint256);
    function transferFrom(address sender, address recipient, uint256 value) virtual public returns (bool);
}

contract IERC20Mintable {
    event Mint(address indexed to, uint256 amount);
    function mint(uint256 amount) virtual public returns (bool);
}

contract IERC721 is IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) virtual public returns (bool);
    function safeTransferFrom(address from, address to, uint256 tokenId) virtual public returns (bool);
    function safeTransferFrom(address from, address to, uint256 tokenId) public returns (bool);
    function approve(address to, uint256 tokenId) virtual public returns (bool);
    function setApprovalForAll(address operator, bool _approved) virtual public returns (bool);
    function getApproved(uint256 tokenId) virtual public view returns (address operator);
    function tokenURI(uint256 tokenId) virtual public view returns (string memory);
    function totalSupply() virtual public view returns (uint256);
    function tokenOfOwnerByIndex(address owner, uint256 index) virtual public view returns (uint256 tokenId);
    function tokenByIndex(uint256 index) virtual public view returns (uint256 tokenId);
}

contract IERC721Mintable is IERC721 {
    event Mint(address indexed to, uint256 tokenId);
    function mint(uint256 tokenId) virtual public returns (bool);
}

contract ISmartContract {
	function getVersion() public;
}

contract Ownable {
	address public owner;
	address public newOwner;
