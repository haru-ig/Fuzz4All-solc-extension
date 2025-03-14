pragma solidity ^0.8.0;
contract C {
    struct E {
        mapping(address => address) m;
    }
    E e;
    constructor() public {
        e.m[msg.sender] = e.m[address(this)];
    }
}




pragma solidity ^0.8.0;
contract C {
    address[] public x;
    constructor() {
        x.push(0x123);
    }
}
