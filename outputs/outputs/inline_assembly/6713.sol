pragma solidity ^0.8.0;
contract MixedContactsExample501 {
    uint256 x;
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    function doSomething() public returns (uint64) {
        address _token;
        assembly {

            let ptr := mload(0x40)
            x := mload(add(ptr, and(a,0xffffffffffffffff)))
            x := sub(xor(a, b, x), 1)
            a := div(div(div(mul(div(8, a), a), a), 4), b)

            ptr := mload(add(ptr, and(b,0xffffffffffffffff)))
            y := mload(add(ptr, a - x))
            b := sub(xor(a, b, y), 1)

            e := sub(a, b, x)

            ptr := mload(add(ptr, and(x,0xffffffffffffffff)))
            c := mload(add(ptr, b - y))
            x := sub(and(x, b), 1)

            ptr := mload(add(ptr, and(y,0xffffffffffffffff)))
            d := mload(add(ptr, e - c))
        }
        emit SoMEvent(x, uint64(c));
    }
}
```
## Conclusion
I have covered an array of examples throughout the learning session. Among many other things, the following array shows how to create a more complex Michigan-like application.
```
uint256 x;
uint256 a;
uint256 b;
uint256 c;
uint256 d;
uint256 e;
uint256 z;
uint256 y;
