pragma solidity ^0.8.0;
contract MangledName {
    int128 counter;
}
code example79_solded {
	OptimizelyExample78_solded myContract = new OptimizelyExample78_solded();

	function incrementCounter() public {
		OptimizelyExample78_solded _myContract = OptimizelyExample78_solded(address(this));
		OptimizelyExample78_solded myContract_ = OptimizelyExample78_solded(address(myContract));
		myContract_ += OptimizelyExample78_solded(address(myContract));
		myContract_ += myContract_;
		myContract_ += myContract_;
		myContract_ += OptimizelyExample78_solded(address(myContract));
	}
}
