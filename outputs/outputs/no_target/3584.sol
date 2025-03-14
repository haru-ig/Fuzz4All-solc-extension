pragma solidity ^0.8.0;
contract g220_2 {
    int public s;
    int public i;
    constructor() public {
        s = s + 1;
        (s, i) = (s * s, int(s));
        s += 3;
        s *= 2;
        s += 3;
        s = int(s) + 10;
        s = int(s) - int(s);


        s = 43 * s;
        s = s + 1;

        s = s + 1;
        s = s / 2;

        s = s;

        s = s + 1;

    }
}
