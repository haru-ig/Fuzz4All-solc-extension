pragma solidity ^0.8.0;
contract Caller {
    function sendValue() public {
        address foo = msg.sender;
        address bar = address(Mutant5Mutator());
        bar.mutantFunction().value(msg.value)() external;
        foo.transfer(msg.value);
    }
}
