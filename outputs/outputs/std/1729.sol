pragma solidity ^0.8.0;
contract Duplicated {
    struct Event {
        uint startTime;
        uint endTime;
    }
    address public[] a;
    uint [] b;
    uint public publicVariable;
    uint internalVariable;
    uint constantPublicVariable;
    uint public constant internalVariable;
    uint constant public constantVariable;
}
