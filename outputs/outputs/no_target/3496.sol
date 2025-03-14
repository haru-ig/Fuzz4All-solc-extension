pragma solidity ^0.8.0;
contract m102 {
	event M102(string msg);
	string[] msg;
	address[] internal addresses;
	constructor(address[] memory _addresses) { addresses = _addresses; for (uint index = 0; index < addresses.length; index++) { msg.push(_addresses[index].toHexString());} msg.push("hello");}
	function logMessage() public view returns(string memory) { if (msg.length > 0) {return msg[msg.length-1]; }  return "logMessage() error 1"; }
}

pragma solidity ^0.8.0;
contract m103 {
	address public owner;
	constructor() public { owner = msg.sender;}
}

pragma solidity ^0.8.0;
contract m104 {
	event EveEvent(uint256 value);
	constructor() public { emit EveEvent(1);}
}

pragma solidity ^0.8.0;
interface m105 {
	event LogEvent(uint256 value);
	function log() public returns (uint256);
}

pragma solidity ^0.8.0;
interface m106 {
	event M106(uint x);
	constructor(string memory s) public{}
}



pragma solidity ^0.8.0;
interface m107 {
	event M107(uint value);
	function log() public returns (uint);
}


pragma solidity ^0.7.4;
interface m108 {
	event M108(address x);
	function log() public returns (address);
}


pragma solidity ^0.8.0;
interface m109 {
	event M109(address x);
	event M110();
	function log() public returns (address);
}
