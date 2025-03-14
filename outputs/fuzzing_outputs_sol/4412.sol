pragma solidity ^0.8.0;
contract Caller {
    function callMe(address a) public pure {
        Caller c = Caller(a);
        c.callMe();
    }
    function fallbackFunc() public payable {
        assert(msg.value == 1 ether);
        fallbackContract.transfer(msg.value);
        assert(false);
    }
}
