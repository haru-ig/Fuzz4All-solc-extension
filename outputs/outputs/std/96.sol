pragma solidity ^0.8.0;

contract SimpleEvent {
    emit SimpleEventLog(address indexed addr, uint val);
    event SimpleEventLog(address addr, uint val);
}

contract ComplexEvent {

    event ComplexEvent1(
        uint indexed val,
        uint indexed count
    );
}
