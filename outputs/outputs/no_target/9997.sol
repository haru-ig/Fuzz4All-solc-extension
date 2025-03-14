pragma solidity ^0.8.0;
contract mutableFunctionalityForSemVer3 {
		uint256 someNumber;
		constructor(uint256 _someNumber) {
			someNumber = _someNumber;
		}
		function modify_someNumber() public {
			someNumber += 650;
		}
		function test_newFeatureAdded(uint256 _someNumberToKeep, bool _flag) public {
			if(_flag){
				modify_someNumber;
			}
			delete modify_someNumber;
			uint256 temp = modify_someNumber;
		}
}
