pragma solidity ^0.8.0;
uint256 public constant MIN = 32768;
contract semanticallyEquiv2 {
    mapping(address => address) public mappingAddress1;
    mapping(uint => uint) private constant ONE = 1;
    modifier check(uint _num){
	assert(_num < 0x1);
	if(_num == 0) {
	    revert();
	}
    };
    constructor(uint256 _num)
    check(_num) public {
        mappingAddress1[msg.sender] = msg.sender;
    }
    function() public {
	uint256 v = mappingAddress1[msg.sender];
    }
}
