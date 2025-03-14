pragma solidity ^0.8.0;
contract Duplicated {
    struct Event {
        uint startTime;
        uint endTime;
    }
    mapping(uint => Event) a;
    mapping(uint => Event) b;
}
```
