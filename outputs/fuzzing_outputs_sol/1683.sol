pragma solidity ^0.8.0;
contract MutatedCaller {
  uint data;

  modifier onlyDataContract() {
    require(address(this).isContract());
    _;
  }

  contract Child is MutatedFallback {
    constructor() {
      data = 1;

      data = fallback();
    }
    function fallback() public pure returns (uint256) {
      return 0;
    }
  }

  function functionCall() public view onlyDataContract returns (uint256) {
      Child c = new Child();

      return c.data;
  }
	function functionCallViaLowLevelTransfer() public pure returns (uint256) {
	    (bool success, uint256 result) = address(this).call{value: 888 wei}("");
	    require(success);

	    return result;
	  }
}

contract Caller {
  uint data;

  function functionCall() public returns (uint256) {
      data = mutatedFallback();

      return mutatedFallbackImplementation();
  }

  function mutatedFallback() returns (uint256 data) {
      return 0;
  }

  function mutatedFallbackImplementation() internal returns (uint256) {
      return data + 1;
  }
}


  function totalSupply() external view returns (uint256);

  function balanceOf(address account) external view returns (uint256);

  function transfer(address recipient, uint256 amount) external returns (bool);

  function allowance(address owner, address spender) external view returns (uint256);
}

/** @title ERC223 """@dev ERC20 Token with approve/transferFrom functionality """
contract ERC20Token_interface is IERC20 {
    event Approval(address indexed owner, address indexed spender
