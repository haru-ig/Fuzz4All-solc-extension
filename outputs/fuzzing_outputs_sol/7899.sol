pragma solidity ^0.8.0;
contract Caller
{
	function callContract() external payable {
		uint64 myId = 10;
        Mutator m = Mutator(432);

		m.initCaller(myId);
		m.callIt();
	}
}
