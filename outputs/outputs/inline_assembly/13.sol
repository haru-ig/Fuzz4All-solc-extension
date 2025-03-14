pragma solidity ^0.8.0;


contract Token {
	string private _name;
	string private _symbol;
	uint8 private _decimals;

	uint256 public totalSupply;
	mapping (address => uint256) public balanceOf;

	constructor (string memory name_, string memory symbol_, uint8 decimals_) {
		_name = name_;
		_symbol = symbol_;
		_decimals = decimals_;
	}

	modifier onlyOwner() {
		require(msg.sender == owner(), "caller is not the owner");
		_;
	}

	function setName (string calldata newName) external onlyOwner {
		_name = newName;
	}

	function setSymbol (string calldata newSymbol) external onlyOwner {
		_symbol = newSymbol;
	}

	function setDecimals (uint8 newDecimals) external onlyOwner {
		_decimals = newDecimals;
	}

	function transfer (address recipient, uint256 amount) external onlyOwner {
		require(recipient!= address(0), "Transfer to the zero address");
		balanceOf[msg.sender] -= amount;
		balanceOf[recipient] += amount;
	}
}
