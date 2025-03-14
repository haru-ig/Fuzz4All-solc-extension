pragma solidity ^0.8.0;
contract Example5 {
    address public valueFromCaller;
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller, "value from caller");
        _;
    }
    function example3() public onlyFromCaller {
        valueFromCaller = msg.sender;
    }
}

event EtherSent;
contract Example6 {
    event EtherTransferged(address, uint);
    function example4() public {
        EtherSent.emit(msg.sender, msg.value);
    }
}
