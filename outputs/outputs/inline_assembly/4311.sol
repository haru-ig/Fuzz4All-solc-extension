pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public c;
    uint public d;

    function update(uint w) public {
        update(w + a);
        update(w + b);
        update(w + c);
        delete d;
    }
    function update(uint m) public {
        address a = 0x0011223344556677;
        address b = 0x0000000000000011;
        address c = 0x0000000000000000;
        uint d = msg.sender;
        update2(d + 2*m);
    }
    function update2(uint z) public {
        address a = 0x001234567890abcd;
        uint b = msg.sender;
        update(a + z*z + 1*b*z);
    }
