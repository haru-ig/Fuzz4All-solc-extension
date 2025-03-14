pragma solidity ^0.8.0;
contract Bar {
    receive() external {
    }
    fallback () external payable {
    }
    receive () external {
    }
    receive() external payable {
    }
}

contract SimpleReceiver {
    function receive() public payable { }
}

contract Caller {
    function fallback() external nonpayable {
    	address payable contractAddr = msg.sender;
    	uint amount = address(this).balance;
    	address payable receiver = address(new SimpleReceiver());
    	contractAddr.call.value(amount)("");
    }
}

contract Test {

    address payable contractAddr = msg.sender;
    uint amount = msg.value;
    address payable receiver = address(new SimpleReceiver());

    call(contractAddr, amount, "", receiver);
    call(contractAddr, amount, "", contractAddr);
    call(contractAddr, amount, "fallback", receiver);
    call(contractAddr, amount, contractAddr, receiver);
    call(contractAddr, amount, contractAddr, contractAddr);


    fallback(contractAddr);
    fallback(contractAddr, amount);


    contractAddr.call(amount, "");
    contractAddr.call(amount);
}
