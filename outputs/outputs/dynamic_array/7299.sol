pragma solidity ^0.8.0;

library AddressLib {
	function isContract(address addr) internal view returns (bool) {
		return (addr == address(0) || (uint160(addr) & 1) == 1);
	}
	function sendValue(address payable, uint256 amount) internal {
		(bool success, ) = payable.call{value: amount}("");
		require(success, "AddressLib: transfer failed.");
	}
	function sendValue(address payable, uint256 amount, bytes memory data) internal {
		(bool success, ) = payable.call{value: amount}(data);
		require(success, "AddressLib: transfer failed.");
	}
	function sendValue(address payable, uint256 amount, bytes memory) internal {
		(bool success, ) = payable.call{value: amount}("");
		require(success, "AddressLib: transfer failed.");
	}
}

contract Keeper {
	contract IUser
	{
		function setBalance(address user, uint256 balance) external;
		function incrementBalance(address user) external;
		function decrementBalance(address user) external;
		function transfer(address transferRecipient, uint256 transferAmount, uint256 transferFee) external returns (uint256 amount);
	}

	IUser _owner;


	mapping(address => uint256) private depositBalance;

	constructor(address owner_)
	{
		_owner = IUser(_owner_);
	}


	function deposit() external payable
	{
		depositBalance[_owner].transfer(address(this).balance);
		depositBalance[_owner] += msg.value;
	}


	function balance() external view returns (uint256) {
		return depositBalance[_owner];
	}

	function withdraw(uint256 amount, uint256 transferFee) external
	{
		require(depositBalance[_owner] >= amount + transferFee, "Must have enough deposit");
		require(_owner.transfer(msg.sender, amount));
		depositBalance
