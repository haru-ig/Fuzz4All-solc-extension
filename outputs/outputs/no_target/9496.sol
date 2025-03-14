pragma solidity ^0.8.0;
contract TestInterface58 {
    Interface58 public iface;
    address public c;
    address public g;
    address public a;

    function TestInterface58(address c_, address g_, address a_) public {
        c = c_;
        g = g_;
        a = a_;
        iface = Interface58(c);
    }

    function getAddress() public returns (address) {
        return a;
    }

    function setAddress(address v) public {
        if (g!= msg.sender) revert();
        a = v;
    }
}
