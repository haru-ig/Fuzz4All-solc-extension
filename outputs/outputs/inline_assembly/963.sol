pragma solidity ^0.8.0;
contract Incrementer3 {
	address address_internal;
	bytes memory constructor_bytes_internal;
	address contract_internal;

	constructor() {
		increment_internal();
		constructor();
		contract_internal = address(address_internal);
	}

	function increment_internal() public pure {
		increment_internal();
	}
	function increment() public pure {
		increment_internal();
	}
	function constructor() public {

	}
}

pragma solidity ^0.8.0;
contract Incrementer4 {
	bytes memory bytes_internal;
	address address_internal;
	address contract_internal;

	constructor(address _contract) {
		increment_internal();
		contract_internal = address(address_internal);
	}

	function increment_internal() public pure {
		increment_internal();
		constructor();
		bytes_internal = bytes1();
		contract_internal = address(address_internal);
	}
}
