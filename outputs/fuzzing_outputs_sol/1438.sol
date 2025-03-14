pragma solidity ^0.8.0;
contract Caller{
    function test() public {
        modify();
    }
    function modify() public {
        EtherReceiver(0).receive(address(this).balance);
    }
}
contract EtherReceiver{
    function receive(uint payable amount) public {

        delete amount;
    }
}
