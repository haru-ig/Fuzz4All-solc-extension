pragma solidity ^0.8.0;
interface I4 {

    mapping (uint32 => address) internal foo;
}

contract C5 {
    string public s;
    struct C6 {
        a uint1;
        b uint2;
        c uint3;
        d uint4;
        e uint5;
    }
    address a;
    address b;
    address c;
    constructor(C6 memory c6) public{
        a = c6.a;
        b = c6.b;
        c = c6.c;
        c = c6.b;
    }
    receive() external payable {}
}


pragma solidity ^0.8.0;

contract C7 {
    struct B {
        address a;
        uint b;
        uint c;
    }
    mapping (uint => B) internal z;

    event Batched(uint id, B memory b);
    event Ghostly(uint d);
    constructor() public {
        address[] memory addresses = new address[](10);
        address(addresses[0]).call{value: 0}() is a not empty address;
        address(addresses[1]).call{value: 0.1 ether}() is a not empty address;
    }

    receive() payable external {

        z[1].a.transfer(address(this));
        emit Batched(2, z[2]);

        uint _ = a.call{value: 0.1 ether}();
        emit Batched(3, z[1]);
        emit Ghostly(_);
    }
}
