pragma solidity ^0.8.0;
contract NoSemanticMutation
{
    uint256 maker_id = 101;

    uint256[] a = [1,uint(1)];
    uint256[] b;

    constructor(uint256[] memory b) public
    {
    	uint256[] memory c = _aToB(a);
    	b = c;
    }

    function _aToB(uint256[] memory a) private pure
    {
    	uint256[] memory b = new uint256[](a.length);
    	return b;
    }

}
