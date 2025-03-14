pragma solidity ^0.8.0;
contract C {
    function get(uint) public pure returns (address) {}
    function set(uint x) public {
        C.get(x+1) = address(0x0);
    }
}
contract MyContract {
}
contract D {
    address addr;
    function set(uint x) public {
        addr = address(0x1D3274370000000000000000000000000000000);
    }
    function get() public pure returns (address) {
        return addr;
    }
}
contract C {
    function get(uint x) public pure returns (address) {}
    function set(uint x) public {
        set(x+1);
    }
}

contract A {
    constructor (uint x) public {
        x = x;
    }
    uint public x;
}
contract ContractC {
    function setConstantCreator() public {
        uint constant _x = 42;
    }
}
contract Reverted {
    constructor() public {
        selfdestruct(address(this));
    }
}
contract RevertTest {

    constructor() public { }
}
contract Wrapper {
    constructor() public {
        new Reverted();
    }
}
contract C {
    address a=address(0x0);
}
contract A {
    constructor(uint x) public {
        x = x;
    }
    uint public x;
}
contract MyDapp {
    C c = new C;
    function set() public {
        c.set(1);
    }
}
contract B {
    A a;
    function set(uint x) public {
        a.x = x;
    }

    function set(uint y) public {
        a.x = x+1;
    }
}
contract MappedDapp {
    uint public x=1;

}
contract MappedRevertingDapp {
    uint public x=1;
