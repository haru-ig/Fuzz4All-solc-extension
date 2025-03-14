pragma solidity ^0.8.0;
contract TestModifier {
    function test() public {
        address caller;
        if (msg.sender == address(0)) {
            caller = msg.sender;
        }
        assert(false);
       if (msg.sender!= address(0)) {
            caller = msg.sender;
        }
        valueTestCall(caller);
    }
    function valueTestCall(address caller) public {
        assert(msg.value > 0);
    }
}
