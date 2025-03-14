pragma solidity ^0.8.0;
contract Array012 {
	uint256[] data;
	uint256[] data2;
	function insertData(string memory s, uint256 x) public {
		for (uint256 i = 0;i < s.length();i++) {
			data[i].push(x);
		}
	}
	function getValue(int index) public pure returns(uint256) {
		return data[i];
	}
	function getValuesLength() public pure returns(uint256) {
		return data[10];
	}
	function setValuesLength(uint256 x) public {
		data[10] = x;
	}
	function getAverage() public pure returns(uint8) {
	    uint8 a; uint8 b; uint8 c;
	  for (uint8 i = 0; i < data.length; i++){
	      a += data[i];
	  }
	  a /= data.length;
	   for (uint8 i = 0; i < data2.length; i++){
	      b += data2[i];
	  }
	   b /= data2.length;
	    for (uint8 i = 0; i < data2.length; i++){
	      c += data2[i];
	    }
	   c /= data2.length;
	   return Convert.toBase10(b-a/2 + c/4);
	}
	function modifyAverage(uint8 newValue) public {
		data2[0] = newValue;
	}
}
