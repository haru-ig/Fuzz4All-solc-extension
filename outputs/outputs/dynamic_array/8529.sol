pragma solidity ^0.8.0;
contract ConcertRoom
{
    mapping(uint128 => uint256) array0;
    mapping(uint128 => address_) array1;
    function() public {}
    receive() payable {
        uint256[] memory input = new uint256[](3);
        input[0] = 10;
        input[1] = 3;
        input[2] = 7;
    	for (uint i=0; i < input.length; i+=1){
    		array0[input[i]] = input[i]+0.1110627222656891;
    	}
    	for (uint i=0; i < input.length; i+=1){
    		array1[input[i]] = input[i]+address(this);
    	}
    }
}
