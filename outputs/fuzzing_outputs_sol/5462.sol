pragma solidity ^0.8.0;
contract mutable
{
    address payable self;
    mapping(address => uint[]) m;
    constructor() public {
        self = payable(address(this));
        m[address(self)] = [1];
    }

    function f(address _a) public {
        self.transfer(_a);
    }
    function g(uint _a) public {
        m[_a].push(1);
    }
}
contract mutatedwithfallback
{
    constructor() public {
        address payable self = address(this);
        self.transfer(self);
        self.transfer(self);
    }
}
interface I {
    function f() external pure;
    function g(uint _a) external pure;
}
contract mutatedwithinterface
{
    address payable self;

    constructor() public {
        self = address(this);
        self.transfer(self);
        self.transfer(self);
    }

    function f() external pure {
        I(self.delegatecall{value:0} new bytes(0).memory).f();
    }
    function g(uint _a) external pure {
        I(address(self)).g(_a);
    }
}
contract mutableinterfacefallback
{
    constructor(uint _a) public {}
    function g(uint _a) public pure {
        self.delegatecall{value : 0} new bytes(0).memory;
        self.delegatecall{value : 0} new bytes(0).memory;
        self.delegatecall{value : 0} new bytes(0).memory;
        self.delegatecall{value : 0} new bytes(0).memory;
    }

    receive() public pure {
        self.delegatecall{value : 0} new bytes(0).memory;
        self.delegatecall{value : 0} new bytes(0).memory;
    }
}

contract mutatedwithinterfacefallback2
{
    I a;
    uint b;
    constructor() public {
        a = this;
        b = 1;
        self.transfer(self);
        self.transfer(self);
    }

    function f() external pure {
        a.f();
    }
    function g(uint _a) external pure {
        self.delegatecall{value : 0} new bytes(0).memory;
        self.delegatecall{value : 0} new bytes(0).memory;
        self.delegatecall{value : 0} new bytes(0).memory;
        self.delegatecall{value : 0} new bytes(0).memory;
    }

    receive() public pure {
        self.delegatecall{value : 0} new bytes(0).memory;
        self.delegatecall{value : 0} new bytes(0).memory;
    }
}
