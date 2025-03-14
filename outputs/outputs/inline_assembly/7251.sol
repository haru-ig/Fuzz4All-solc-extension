pragma solidity ^0.8.0;
contract Test {
    uint private balance;
    function balanceInContract() public view returns (uint) {
        return balance;
    }
    function addBalanceInContract(uint val) public {
        if(msg.value!= 0) {
            balance += val;
	    }
    }
}
contract Test222 is Empty{
    uint private balance;
    uint constant internal initBalance = 10000;
    function makeEmpty() public {
        uint totalBalance = balance + initBalance;
        balance = totalBalance;
    }
}
contract Test234 is Empty{
    uint constant initBalance = 0;
    uint public balanceInContract = balance + initBalance;
}
contract Test246 {
    function makeEmpty() public {
        uint initBalance = 5;
        uint totalBalance = balance + initBalance;
        balance = totalBalance;
    }
}


pragma solidity ^0.8.0;
contract Test2 {
    address payable public receiver;
    uint constant rate = msg.value;
    function send(address addr) public {
        uint amount = msg.value / rate;
        if (amount!= 0) {
            receiver.transfer(amount);
        }
    }
}
