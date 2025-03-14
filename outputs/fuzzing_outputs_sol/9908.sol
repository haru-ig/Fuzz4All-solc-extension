pragma solidity ^0.8.0;
contract New {
    function new(uint _a) pure public returns(uint) {
        return (_a^2)*_a>>8;
    }
}
contract Caller {

    function() public payable {
        Old _old = Old(address(this));
        Old.old.value(msg.value).delegatecall(abi.encodeWithSelector(_old.old.data.value(msg.value + 8))));
    }




    receive() public payable {}


    function() public {}


    function recv() public payable {}
}
