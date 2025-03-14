pragma solidity ^0.8.0;
contract mutator {
address payable public deployer;

	constructor()
	public {
		deployer = payable(msg.sender_);
	}

	struct mutator {
		uint h;
		uint i;
	}

	mutator public data;

	function initialize(address payable theDeployer, string memory theToken, uint256 thePrice)
	public
	{
		data = mutator(0, 1);
		data.i = 1;
		data.h = 3;
	}

	modifier onlyByDeployer()
	{
		require(msg.sender_ == deployer, "Must be deployer");
		_;
	}

	function modify()
	onlyByDeployer
	public
	{
		data.i = 2;
	}

}
