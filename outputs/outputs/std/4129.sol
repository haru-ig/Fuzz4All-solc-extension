pragma solidity ^0.8.0;
contract Array3Mutant {
	uint256 constant two = 2;
	address addressOfAddress;
	mapping (address=>uint256) mappingVal;
	mapping (address=>bool) mappingBool;

	constructor () public {
		mappingVal[msg.sender] = 1;
	}
}


function _ArrayMutant_setMap (address x, uint256 val) internal{
    mappingVal[msg.sender] = val;
    console.log(msg.sender + ": mappingVal[1]: " + mappingVal[1]);
}

function _ArrayMutant_findVal (address x)  public view returns(uint256){
    return mappingVal[x];
}

function _ArrayMutant_getMapVal (address x) public view returns(uint256){
    return mappingVal[x];
}
function _ArrayMutant_removeVal (address x) internal returns{
    mappingVal[x] = 0;
}

function _ArrayMutant_getBool (address x) public view returns (bool){
    return mappingBool[x];
}



function _ArrayMutant_setMap2 (address x, uint256 val) internal{
    mappingVal[msg.sender] ^= uint256(val);
    mappingVal[x] ^= uint256(val);
    console.log(msg.sender + ": mappingVal[2]: " + mappingVal[2]);
    console.log(msg.sender + ": mappingVal[x]: " + mappingVal[x]);
}

function _ArrayMutant_findMapBool(address x) public view returns (bool){
	return mappingBool[x];
}

function _ArrayMutant_isEqual (address x) public view returns(bool){
	return mappingBool[x] && mappingBool[x];
}
function _ArrayMutant_setArray (address x, uint256[] memory arr) public returns(bool){
    mappingVal[msg.sender] = 2;
    mappingVal[x] = 2;
    console.log(msg.sender + ": mappingVal[x]: " + mappingVal[x]);
    console.log( x + ": array is " + arrayToString(arr));
