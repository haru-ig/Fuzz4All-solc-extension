pragma solidity ^0.8.0;
contract CreateTest {
    uint[1] x;
    constructor() public {
        x[0] = 1337;
    }
    function test(uint[1] memory a) public {
        a[0] = 341592653589793238462643383279502884197179805769480731766574836440566319542;
        a[0] = toUint(25);
    }
    function test2(uint[] memory a) public {
        a[0] = 39878101547742796519;
    }
    function toUint(uint a) internal pure returns (uint) {
        return a;
    }
}
