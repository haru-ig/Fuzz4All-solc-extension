pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations19a_2 {
    uint[5] a;
    constructor () public {
        uint l;
        uint h;
        l = 56462234;
        l++;
        h = (l - 4) * (l - 2);
        a[3] += h * (l - h);
        a[4] = (l + 2) - (h * (h + l - 2)) * (h + l - 4);
        a[0] = (17 + 21);
        a[1]++;
    }
    function fct(uint[5] memory h) public {
        uint l;
        uint h;
        l = 56462234;
        l++;
        h = (l - 4) * (l - 2);
        a[3] += h * (l - h);
        a[4] = (l + 2) - (h * (h + l - 2)) * (h + l - 4);
        a[0] = (17 + 21);
        a[1]++;
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations19b_2 {
    uint[5] a;
    constructor () public {
        uint l;
        uint h;
        l = 56462234;
        l++;
        h = (l - 4) * (l - 2);
        a[3] += h * (l - h);
        a[4] = (l + 2) - (h * (h + l - 2)) * (h + l - 4);
        a[1] += (a[3] * (a[2] + 4) + 4) / 2 + 4;
        a[2] = (a[1] + 3) / (2 * (a[3] - 1));
        a[62] =
