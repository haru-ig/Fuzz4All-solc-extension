pragma solidity ^0.8.0;
contract Caller {
    modifier onlyPayable {
    require(
        msg.value == 0,
        "Caller: Sender sent too much Ether"
    );
    _;
}
}
