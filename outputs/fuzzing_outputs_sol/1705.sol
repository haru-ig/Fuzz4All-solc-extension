pragma solidity ^0.8.0;
contract SimpleFallbackWithAddress {
  	address public beneficiary;
	constructor (address _beneficiary) {
  		beneficiary = _beneficiary;
	}
  function fallback () public {
    if (msg.value > 0) {
      beneficiary.transfer(msg.value);
    }
    else {
    	beneficiary.transfer(address(this).balance);
    }
  }
}

contract Caller {
  	SimpleFallbackWithPayable public simpleFallbackWithPayable;
	constructor (SimpleFallbackWithPayable _simpleFallbackWithPayable) {
  		simpleFallbackWithPayable = _simpleFallbackWithPayable;
  	}
  	function method() public payable {
  		require (msg.value > 0);
  		simpleFallbackWithPayable.callback(true, msg.value);
  	}
  	function methodWithReceive() public {
  		uint256 amount = simpleFallbackWithPayable.callback(false, 0)._0;
  		require (amount > 0);
  	}
  	function methodWithHighLevelCall(uint256 value) public {
  		require (value > 0);
  		(bool success, uint returned) = address(this).call{ value: value }("");
  		require (success);
  		require (returned == value);

  		address(this).transfer(value);
  	}
}
