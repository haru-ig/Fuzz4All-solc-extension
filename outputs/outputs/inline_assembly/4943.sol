pragma solidity ^0.8.0;
interface I {
	uint value();
}
contract simple1 {
	mapping (address => mapping (address => bool)) public blacklist;
	uint[] private data;
	I public immutable i;
	constructor(I _i) {
		i = _i;
		data.push(0);
	}
	function getData() public view returns (uint) {
		return data[0];
	}
	function putBlacklist(address ip) public {
    	blacklist[msg.sender][ip] = true;
	}
	function putWhitelist(address ip)
		public
		whenNotBlacklisted(ip)
	{
    	blacklist[msg.sender][ip] = false;
	}
	function whenNotBlacklisted(address ip)
		require(!blacklist[msg.sender][ip])
		public
	{

	}
}
