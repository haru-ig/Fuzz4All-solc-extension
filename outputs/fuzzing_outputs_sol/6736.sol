pragma solidity ^0.8.0;
contract Caller {
    constructor(address m) public {
        m.call{ value: 5000 }("");
    }
}
