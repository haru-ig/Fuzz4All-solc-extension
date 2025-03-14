pragma solidity ^0.8.0;
contract Test30010 {
    uint public x = a + b - x;
    address payable a;
    uint public b = 10;
    constructor () public {
        a.call.value(address(1).balance.sub(a.balance))("");
        a.transfer(address(1).balance.sub(a.balance), "");
    }
}
