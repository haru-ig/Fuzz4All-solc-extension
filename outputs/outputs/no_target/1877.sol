pragma solidity ^0.8.0;
contract Mutate402 {
    uint public a;
    uint public b;
    uint public x;
    constructor(uint256, uint256) public {
        x = 0;
        a = x;
        b = x + 2;

        x += uint256(-1);
    }
}

contract Test {
    function test() public {
        Mutate40 _m = Mutate40(address(3));
        Mutate402 _m2 = Mutate402(address(3));
    }
}
