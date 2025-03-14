pragma solidity ^0.8.0;
contract Mod3 is Mod4 {
    constructor (uint x0) public Mod4(x0) {
    }
    function f1() public {
        a++;
        x++;
        update(x);
        get(x);
    }
    function f2() public {
        a++;
        a++;
        a++;
        a++;
        a++;
        update(x);
        x = a;
        get(x);
    }
    function f3() public {
        a++;
        a++;
        a++;
        a++;
        update(x);
        x = a;
        x = a;
        get(x);
    }
}
