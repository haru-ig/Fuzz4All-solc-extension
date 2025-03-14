pragma solidity ^0.8.0;
interface MixedContactsExample101Interface {
    function doesSomething() external returns (bool);
    function someOperation() external returns (uint56);
}
contract MixedContactsExample101 {
    uint x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 y;
    event SomeEvent(uint value, uint64 count);
    function doSomething() public returns (uint64) {
        a = a * 8;
        b = b * 68;
        bool x3 = x % 13 == 0;
        c = c * 948;
        d = d * 87;
        if(!x3) {
            y = e;
        }
        e = e * 7;
        a = a + c + b ;
    }
    function someOperation1() public returns (uint32) {
        return 1;
    }
}
pragma solidity ^0.7.0;
contract ReentracyExample25 {
    event SomeEvent();
    modifier alwaysReturnsValue() {
        emit SomeEvent();
        _;
    }
    uint56 y;
    function someFunc1() alwaysReturnsValue public returns (uint56) {
        int78 n = 172 - 479;
        uint56 r = pow(int71, int53);
        int164 b = 2600 * 13 + (n + 56) - 11346;
        bool q = x;
        bool j = true;
        byte [] b1 = new bytes1[](4);
        uint56 n1;
        do {
            n1 = n % 3;
            b1[n1] = byte(230283);
        } while (n1 == 1);
        while (true) b = a % 4208;
        c = a + n;
        do a = a -
