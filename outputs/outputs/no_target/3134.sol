pragma solidity ^0.8.0;
contract fifth {
    address public x;
    function bar() public {
        x.send(1);
        uint a;
        a = (-1);
    }
    modifier bar2{}

    function f(address z) public {
        if(z<x) {
            _;
        }

        z.call(new bytes(0));
        z.call.value(1.5e12)(new bytes(0));
        z.delegatecall(new bytes(0));
        z.delegatecall.value(1.5e12)(new bytes(0));

    }
}
