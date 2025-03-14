pragma solidity ^0.8.0;
contract OriginationMutated {
    uint public x;
    uint public y;
    uint public z;
    function origine() public payable {
        x = _check(x, -32768, 32767);
        x = x / 10;
        x = _check(x, -32768, 32767);
        x = 1 + 3 * x;
        y = x + 2 * x + 6 * x*x + 12 * x*x*x + 18 * x*x*x*x + 24 / (3*x) + 30 * (x + 3 * x + 5 * x*x + 7 * x*x*x + 9 * x*x*x*x + 11 * x*x*x*x*x + 13 * x*x*x*x*x*x + 15 * x*x*x*x*x*x*x*x + 17 * x*x*x*x*x*x*x*x*x + 19 * x*x*x*x*x*x*x*x*x*x + 21 * x*x*x*x*x*x*x*x*x*x*x * x * x * (x + 2 * x+ x*x + 5 * x*x + 10 * x*x*x + 15 * x*x*x*x + 20 * x*x*x*x*x + 25 * x*x*x*x*x*x + 30 * x*x*x*x*x*x*x*x + 35 * x*x*x*x*x*x*x*x*x*x * x * x * x * (x + x*x + 3 * x*x + 5 * x*x*x + 7 * x*x*x*x + 9 * x*x*x*x*x + 11 * x*x*x*x*x*x + 13 * x*x*x*x*x*x*x*x + 15 * x*x*x*x*x*x*x*x*x*x / x * x * x
