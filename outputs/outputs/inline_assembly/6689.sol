pragma solidity ^0.8.0;
interface MixedContactsExample501Interface {
    function someOperation() external returns (uint56);
}
contract MixedContactsExample501 is MixedContactsExample500 {
    uint64 x_1;
    uint64 a_1;
    uint64 x_2;
    uint64 x_3;
    function doSomething() public returns (uint64) {
        (x_1, x_2, x_3) = calculate(x, a);
        a_1 = a * 8;
        (x_1, x_2, x_3) = calculate(a, a_1);
        return calculate(x, b);
    }
    function calculate( ) public returns (uint, uint, uint) {
        return (x_1, a_1, x_2);
    }
}
