pragma solidity ^0.8.0;
contract MintableCappedToken is IERC20 { function mint(address to, uint256 amount) external returns (bool); function mintWithCap(address to, uint256 amount, uint256 cap) external returns (bool); }


pragma solidity ^0.8.0;
abstract contract MintableCappedToken is BasicMintableToken, Ownable { constructor (address initialOwner, uint256 amount, uint256 cap) { super(initialOwner, amount); } function _mint(address to, uint256 amount) internal checkNotPaused beforeTokenCreation(address msgSender) { super._mint(to, amount); } function _burn(address from, uint256 amount) internal checkNotPaused beforeTokenDeletion(address msgSender) { super._burn(from, amount); } function mint(address to, uint256 amount) public onlyOwner returns (bool) { return _mint(to, amount); } function mintWithCap(address to, uint256 amount, uint256 cap) public onlyOwner returns (bool) { require(cap > 0, "MintingCapError: Cap can't be 0."); return mint(to, amount); } function isMintingEnabledInternal() public view returns (bool)
