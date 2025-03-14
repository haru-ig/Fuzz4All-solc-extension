pragma solidity ^0.8.0;
contract A {
    string x;
    string y;
    uint a;
    constructor() {
        x = "11";
        y = "222";
        if (a % 2 == 0) {
            a += 1;
        } else {
            a += 3;
        }
    }
    function f() public {
        while (a > 2) {
            if (a > 5) {
                a = a - 1;
            } else {
                try {
                    y[5] = toDecimalUint(a);
                    y.concat(toDecimalUint(a));
                } catch (uintOverflow) {

                }
                a = a - 3;
            }
        }
        a = a - 2;
    }
}
