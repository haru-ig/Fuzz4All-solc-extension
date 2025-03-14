pragma solidity ^0.8.0;
storage a;
contract SimpleStore8 {
    uint public data;
    constructor(uint d) {
        data = d;
    }
    function f() public view returns (uint) {
        return data;
    }
}

import "./SimpleStore8.sol";
contract SimpleStore12 {
    SimpleStore8 public f;
    constructor(address o) public {
        f = SimpleStore8(o);
    }
    function g() view public returns (uint) {
        return f.f();
    }
}

pragma solidity ^0.8.0;
contract SimpleStore12 {
    SimpleStore8 public f;
    address payable a;
    constructor(address payable o) public {
        f = SimpleStore8(o);
    }
    function g() view public returns (uint) {
        return f.f();
    }
}

contract SimpleStore12Call {
    SimpleStore12 public f;
    SimpleStore12Call(address payable o) public {
        f = SimpleStore12(o);
    }
    function g() view public returns (uint) {
        return f.f.g();
    }
}
