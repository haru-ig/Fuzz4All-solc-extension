pragma solidity ^0.8.0;

contract MutatorWithSolidity {
    address public c;
    address public y;

    MixedContactsExample35 public instance;

    constructor(address c, address y) public {
        instance = new MixedContactsExample35(c, y);
        c = c;
        y = y;
    }

    function increaseByOneAndTen() public {
        instance.increaseByOneAndTen(0);
    }
    function increaseByTenAnd10(uint d) public {
        instance.increaseByTenAnd10(d);
    }
    function increaseByTenAnd20(uint g) public {
        instance.increaseByTenAnd20(g);
    }
    function increaseBy100And20(uint c) public {
        instance.increaseBy100And20(c);
    }
    function increaseBy100And10(uint d) public {
        instance.increaseBy100And10(d);
    }
    function increaseBy5000And20(uint a) public {
        instance.increaseBy5000And20(a);
    }
    function decreaseByTenAnd20(uint b) public {
        instance.increaseByOneAndTen(b);
    }
}
