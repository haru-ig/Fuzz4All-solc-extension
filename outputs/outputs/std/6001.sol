pragma solidity ^0.8.0;
contract Numbers {
    uint256 max = 2 ** 510;
    function maxUint256() public pure returns (uint256){
	    return max;
    }
}
