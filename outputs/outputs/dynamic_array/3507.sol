pragma solidity ^0.8.0;
contract C {
    event Emitted();
    struct Data {
        uint256[] field;
    }
    Data d;
    constructor() public {
        d.field.push(0);
        d.field.push(1);
    }

    function test() public view returns (void) {
        for (uint256 x = 0; x < d.field.length; x++) {
            d.field[x].length();
        }
    }

    function foo() public view returns (void) {
        if(x[y]) {
        }

        for (uint256 x = 0; x < d.field.length; x++) {
            d.field[x].length();
        }
    }

    function bar() public view returns (uint256) {
        d.field.push(2);
        for (uint256 x = 0; x < d.field.length; x++) {
            d.field[x].length();
        }
        return d.field.length;
    }

    function baz(Data storage d) public view returns (uint256) {
        for (uint256 x = 0; x < d.field.length; x++) {
            d.field[x].length();
        }
        return d.field.length;
    }
}
