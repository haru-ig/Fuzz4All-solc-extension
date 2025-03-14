pragma solidity ^0.8.0;
contract MutatedExamples11 is MutatedExamples10 {
  function checkType(uint128 x) public returns(uint128 y) {
  }
}

pragma solidity ^0.8.0;
contract MutatedExamples12 {
  function mutated(address x) public returns(uint128 y) {
    return x.balance < 3000;
  }
}

pragma solidity ^0.8.0;
contract MutatedExamples13 {
  function mutatedNoChange(address x) public returns(address y, uint128 z) {
    return x, 7;
  }
}


pragma solidity >=0.4.21 <0.7.0;

contract SimpleContract {
  address public ownedByAddress;
  uint public num = 3;
  event MyEvent(uint num, string reason);

  function SimpleContract(address _ownedByAddress) public {
    ownedByAddress = _ownedByAddress;
  }

  function setN(uint _n) public {
    num = _n;
    for (uint i=0; i<20; i++) emit MyEvent(i, num.toString());
  }
}

contract CappedToken {
	event Burn(address indexed burner, uint256 value);
	mapping (address => uint256) public burned;
	address public owner;
	uint256 public totalSupply;
	uint256 public maxSupply;

	function CappedToken(uint256 _supply, uint256 _maxSupply) {
	    owner = msg.sender;
	    totalSupply = _supply;
	    maxSupply = _maxSupply;
	}

	function mint(uint256 amount) {
		require (msg.sender == owner);

		burned[msg.sender] += amount;
		totalSupply += amount;
		if (totalSupply > maxSupply) maxSupply = totalSupply;
	}

	function burn(uint256 amount) {
		if (burned[msg.sender]>0)
		{
			delete burned[msg.sender];
			owner.transfer(amount);
		}
	}
}

pragma solidity >=0.4.21 <0.7.0;

pragma solidity >=0.4.21 <=0.6.0;
