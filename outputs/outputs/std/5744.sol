pragma solidity ^0.8.0;
contract MyMutated {
    Array8 a = new Array8;
    Constructor c = new Constructor;

    constructor(){
        c.arraySet2(7, 3);
    }
    function update() public {
        a.arraySet2(7, a.arrayAdd(3));
        a.arraySet(6, a.arrayAdd(3));
    }
}
