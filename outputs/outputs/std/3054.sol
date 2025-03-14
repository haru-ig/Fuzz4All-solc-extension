pragma solidity ^0.8.0;
interface IERC20Mintable {
    function balanceOf(address account) external view returns (uint256);
    function mint(address account, uint256 amount) external returns (bool success);
}




contract ERC20Mintable {

	address public constant NFT_CONTRACT_ADDRESS = 0x3d4b3c169e15F27f0d594391585083F02e746131;

	modifier onlyNFT() {
		require(
			msg.sender == NFT_CONTRACT_ADDRESS,
			"Mintable: caller does not own the NFT contract address"
		);
		_;
	}


	uint256 public constant TOKEN_MAX_SUPPLY = 7656;

	uint256 public _totalSupply;

	constructor(uint256 initialSupply) {

		require(initialSupply >= 0, "ERC20Mintable: initial supply must be positive");

		_totalSupply = initialSupply;
	}


	function totalSupply() public view returns (uint256) {
		return _totalSupply;
	}

	/**
	 * @dev Returns the symbol associated with the NFT contract
