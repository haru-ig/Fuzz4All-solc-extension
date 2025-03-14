pragma solidity ^0.8.0;
contract B {
    function bar(uint8 y) public returns (uint) {
        uint s = y;
        uint m = s + 1;
        uint t = s + 1;
        uint n;
        if (m >= 100) {
            n = m - t - 100;
        }
        else {
            n = m - t - 1;
        }
        return n;
    }
}
contract Caller {
    C receiver;
    function f() public {
        uint8 x = 6;
        uint8 y = 4;
        receiver = new C();
        receiver.f.fallback.value(1 ether) {
            receiver.foo(6 ether);
        }
        receiver.bar(y);
    }
}
