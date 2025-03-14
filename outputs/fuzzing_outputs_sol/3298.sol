pragma solidity ^0.8.0;
contract ReceiveEther {
    function simpleContract() public {
        uint x = 0;
        address addr = address(this);
        uint etherAmount = msg.value;
        addr.transfer(etherAmount);
        uint expected = 1;

        x = expected;
    }
}
