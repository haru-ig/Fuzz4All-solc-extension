pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SemanticallyDistinct {
    string public semanticallyDistinct;
    constructor() {
        semanticallyDistinct = "SemanticallyDistinct";
    }
    function updateSemanticallyDistinctValue(string calldata) external {
        semanticallyDistinct =  calldata;
    }
    modifier semanticallyDistinctValueModified() {
    	uint _semanticallyDistinct = safeTransferValue();
    	semanticallyDistinct +=  "New SemanticallyDistinct value (" + _semanticallyDistinct.toString() + ")";
    	_;
    }
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
Contract SemanticallyDistinct {
    uint public semanticallyDistinct = 0;
    modifier semanticallyDistinctValueModified() {
        uint _semanticallyDistinct = safeTransferValue();
        semanticallyDistinct +=  "New SemanticallyDistinct value (" + _semanticallyDistinct.toString() + ")";
        _;
    }
    function updateSemanticallyDistinctValue(string calldata) external {
    	uint _semanticallyDistinct = safeTransferValue();
    	semanticallyDistinct +=  "New SemanticallyDistinct value (" + _semanticallyDistinct.toString() + ")";
    }
    function safeTransferValue () public view returns(uint){
    	if (msg.value > 0){
    		return (uint(msg.value)-1);
    	} else {
    		return (uint(0));
    	}
    }
}
