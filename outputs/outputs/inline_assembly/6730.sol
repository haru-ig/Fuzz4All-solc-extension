pragma solidity ^0.8.0;
interface MixedContactsExample3Interface {
    function someOperation() external returns (uint56);
    function someOtherOperation() external;
}
contract MixedContactsExample3 is MixedContactsExample3Interface {
    uint56 x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 _y;
    event SoMEvent(uint value, uint64 count);

    function doSomething() public returns (uint64) {
        {
            x %= 3;
        }
        y *= 2;
        if(y>0) {
            x += a;
            a *= 5;
        }
    }
}

pragma solidity ^0.8.0;
interface MixedContactsExample8Interface {
    function someOperation() external returns (uint56);
    function someOtherOperation() external returns (uint56);
}
contract MixedContactsExample8 {
    uint56 x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 f;
    uint56 g;
    uint56 h;
    uint56 i;
    uint56 j;
    uint56 y;
    event SoMEvent(uint value, uint64 count);

    function doSomething() public returns (uint64) {
        { someOtherOperation(); }
        {
            a *= 8;
        }
        {
            b *= 68;
            bool _x3 = x % 3 == 0;
        }
        {
            c *= 948;
        }
        { someOtherOperation(); }
    }
}
