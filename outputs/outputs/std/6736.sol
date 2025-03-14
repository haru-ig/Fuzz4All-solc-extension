pragma solidity ^0.8.0;
contract Mutate60_Function_Function {
	event LogEvent(bytes32 msg);
	function LogFunction() public {
	}
	function Log_With_Data(bytes32 _msg) public {
		emit LogEvent(_msg);
	}
}
