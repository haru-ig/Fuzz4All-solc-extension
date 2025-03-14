pragma solidity ^0.8.0;
contract Caller {
    function callMe() public payable {
        (bool success, bytes memory returnData) = address(this).call{value:msg.value}(new bytes(0));
    }
}
contract A {
    address payable _address;
    function setAddress(address payable _x) public {
        _address = _x;
    }
}
contract B is A {
    address payable newAddress = address(new Fallback());
    constructor()
    {
    }
    fallback () {
    }
    function fallback() external returns(uint, bytes memory) {
        return (uint(0x385ec223000000000000000000000000000000000000000000000000000000000), abi.encodeWithSignature("fallback()"));
    }
    receive () {
    }
}
contract C is A {
    function f() public {
        newAddress = address(new Caller());
    }
}
contract D1 is A {
    address payable a;
    constructor()
    {
        a = address(this);
    }
    fallback() external {
        a.transfer("4026a3d12d231348b4b4ea9c18fa1a83ac1900a686024a2cb0e747658f5d3d42");
    }
    receive () {}
}
contract D2 is A {
    function f() public {
        D2 a = new D2();
        a.setAddress(address(this));
    }
}
contract E is A {
    address payable a;
    constructor()
    {
        a = address(this);
    }
    fallback() public {
        require(a == address(this), "Fail");
    }
    receive () public {}
}
contract Tests {
    function run(
        uint maxValue,
        uint numChecks,
        uint numCalls) public
    {
        for (uint i = 0; i < numChecks; i++) {
            for (uint j = 0; j < numCalls; j++) {
                A a = new A();
                uint m = a.setAddress(address
