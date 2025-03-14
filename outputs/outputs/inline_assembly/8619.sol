pragma solidity ^0.8.0;
contract Modul {
    uint private counter;
    mapping (uint => uint) public counterStore;
    function deposit (uint _amount) public returns (uint) {
        counterStore[msg.sender] = counter;
        return _amount + counter;
    }
    function withdraw() public {
    	uint amount = counterStore[msg.sender] - msg.value;
    	uint previousValue = counterStore[msg.sender];
    	if(amount < previousValue) {
    		counterStore[msg.sender] = previousValue;
    	}
    	else {
    		counterStore[msg.sender] = 0;
    	}
    }
}
