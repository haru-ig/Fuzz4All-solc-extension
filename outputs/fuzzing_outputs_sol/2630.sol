pragma solidity ^0.8.0;
contract myContract{
    bytes32 public myDataField;
    constructor(){}
    function getData() public view returns(uint){
        return myDataField;
    }
}
contract Caller{
    bytes32 public myDataField;
    uint i;
    bool result;
	function myCall() public {
		result = myDataField == "this is a test";
		i = 0;
	}
	function getData() public view returns(bytes32){
		myDataField = "this is a data in storage";
		result = myDataField == "this is a data in storage";
		i = 1;
		return myDataField;
	}
}
