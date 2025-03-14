pragma solidity ^0.8.0;
contract MyContract {
    address public adr;
    string public myData;
    constructor() {
        myData = "myData";
        adr = address(this);
    }
    function getData() public view returns(bytes32) {
        return myData;
    }

    fallback () external payable {
        myData = "I can't handle this!";
        adr.transfer(msg.value);
    }
}
