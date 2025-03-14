pragma solidity ^0.8.0;
contract test{
	uint constant val = 19;
	function func() public pure returns (uint256) {
		return val+1;
	}
}

pragma solidity ^0.8.0;
contract test {
    uint constant val = 19;
    function setVal(uint x) public owner returns (uint256 x_) {
    	x_ = x;
    }
    function setValWithoutModifier() public {
    	setVal(val);
    }
    function useModifier() onlyOwner public {
    	setValWithoutModifier();
    }
    modifier limitedExecution(address only) {


    	if (msg.sender == only)
    		_;
    }
}
