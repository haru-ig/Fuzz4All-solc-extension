pragma solidity ^0.8.0;
contract MutatePos {
    bool x;
    bool y;
}
contract NegateZeroAdd {
    int z;
    uint z;
    int x;
    uint x;
    function f() public {
        z = 0;
        (z, x) = (x - 1, x + 1);
        x = x - x;
        if (x > 10)  (x, );
        z = 0;
        (z, x) = (x + 1, x - 1);
        x = x + x;
        if (x >= 11) {
            x += x + 1;
        }
        z = 0;
        (z, x) = (x + 1, x - 1);
        x = x % 1;
        if (x > 10)  (x, );
        z = 0;
        (z, x) = (x - 1, x + 1);
        x = x / 2;
        if (x > 5)  (x, );
        z = 0;
        (z, x) = (x + 1, x - 1);
        x = x + x / 2;
        if (x > 6)  (x, );
        z = 0;
        (z, x) = (x - 1, x + 1);
        if (x >= 100)  (x + 1, );
        x = x / 2;
        y = x % 1;
        if (y >= 15)  (x + 1, );
        y = x % 1;
        if (y > 9)  (x, );
        y = x % 1;
        if (y >= 5)  (x, );
        x = x * 1;
        if (x >= 7)  (x - 1, );
        x = x * 1;
        if (x > 10)  (x, );
        x = x % 1;
        if (x > 10)  (x + 1, );
        x = x % 1;
        if (x >= 10)  (x, );
        x = x % 1;
        if (x > 5)  (x, );
        x = x / 2;
        x = x / 2;
        if (x >= 2)  (x - 1, );
        x = x * 1;
        if (x >= 2)  (x - 1, );
        x = x * 1;
        if (x == 2 * 1)  (x + 1, );
        x = x / 2;
        if (x == 3 * 3)  (x, );
        x = x % 1;
        if (x >= 10)  (x, );
        x = x % 1;
        if (x > 10)  (x, );
        x = x / 2;
        if (x >= 8)  (x, );
        x = x / 2;
        if (x >= 2
