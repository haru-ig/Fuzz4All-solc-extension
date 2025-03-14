pragma solidity ^0.8.0;
contract Caller {
    function test() public payable {
        uint a = 2;
        uint b = 3;
        Example obj = new Example();
        obj.testCall();
        uint div = obj.getDivided();
        uint x = obj.getX();
        uint c = div + x;
        msg.sender.send(c);
    }
}
