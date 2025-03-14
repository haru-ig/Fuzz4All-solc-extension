pragma solidity ^0.8.0;

contract IERC721Enumerable is IERC721Enumerable {
	function tokenOfOwnerByIndex(address _owner, uint256 i) public view returns (uint256);
	function tokenByIndex(uint256 i) public view returns (uint256);
	function totalSupply() public view returns (uint256);
}
