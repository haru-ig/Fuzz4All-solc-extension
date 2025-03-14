pragma solidity ^0.8.0;
contract simple {
	uint[] data;
	mapping(uint => string) dataMap;
	bool flag;
	constructor() {
		flag = false;
		add();
		data.push(0);
		flag = false;
		add();
		data.push(42);
		flag = false;
		add();
		data.push(0);
		data.push(0);
		dataMap[42] = "test";
	}
	function add() public {
		data.push(data[data.length-1]+50);
	}
	function changeData() public {
		data[2] = 0;
		flag = false;
		data.push(data[data.length-1]+1000);
	}
	function getData() public view returns (uint) {
		return data[0];
	}
	function getDataMap() public view returns(string memory) {
		return dataMap[0];
	}
	function setFlag() public {
		flag =!flag;
	}
}

pragma solidity ^0.8.0;
import "./ERC20.sol";

interface Mintable {
    /**
     * \dev Function to mint new tokens.
     *
     * \param _to The address that will own the minted tokens.
     * \param _amount The amount of tokens to mint.
     * \{
     *  require(_to!= address(0), "ERC2
