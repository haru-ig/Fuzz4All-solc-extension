pragma solidity ^0.8.0;
contract SemanticInjection
{
    uint256[] public a;
    uint256[] public b;
    uint256[] public c;
    uint256[] public d;
function semanticInjection1(uint256[] memory a, uint256[] memory b, uint256[] memory c) public pure {

    	if(true && a > b && a >= c && a.length >= 1 && c.length == 0 && b.length!= 0){

    	}
    }
}
