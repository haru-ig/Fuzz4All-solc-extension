pragma solidity ^0.8.0;
contract Caller {
    uint public constant amount = 1 ether;
    uint receiveData;
    address payable public contractAddress;
    uint public expectedValue;

    fallback() public payable {
        uint result;
        contractAddress.call{value: amount}("");
        if (amount >= 1 ether) {
            (result, ) = contractAddress.call.value(amount)("");
        }
        receiveData = result;
    }
    receive () external payable{assert(false);}
    fallback() public onlyOwner {
        result = calculateAdd1(99, 10);
        assert (result == 100);
        result = calculateAdd2(96);
        assert (result == 98);
        expectedValue = 200;
        contractAddress = msg.sender;
    }

}
