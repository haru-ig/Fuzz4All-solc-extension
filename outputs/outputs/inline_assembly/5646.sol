pragma solidity ^0.8.0;
contract ConstantAccessBlock2Mutator3 {
    uint public x = 3;
    constructor() {

    }
    function test() public view returns (uint) {
        uint x2 = 4;
        x := add(x, x2);
        x := add(x, x2);
        x := add(x, x2);
        x := add(x, x2);
        x := add(x, x2);

        uint x3 = 3;
        x := add(x, x3);
        x := add(x, x3);
        x := add(x, x3);
        x := add(x, x3);
        x := add(x, x3);

        x := add(x, x);
        x := add(x, x);
        x := add(x, x);
        x := add(x, x);
        x := add(x, x);
        x := add(x, x);

        uint x4 = 123;
        x := add(x, x4);
        x := add(x, x4);
        x := add(x, x4);
        x := add(x, x4);
        x := add(x, x4);
        x := add(x, x4);

        x := add(x, x);
        x := add(x, x);
        x := add(x, x);
        x := add(x, x);
        x := add(x, x);
        x := add(x, x);
        x := add(x, x);

        return x1;
    }
}
