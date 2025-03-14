pragma solidity ^0.8.0;
contract F7 {
    uint b;
    constructor() {
        b = 1;
    }
    function divide(uint x) public {
        b = b/x*((x+((x-1)/x))/x);
    }
    function modify(uint x) public {
        b = b + x*((x-2)/x);
    }
}




abstract contract IF1 is I1 {
    constructor() {

    }
    function subtract(uint x) public pure override {
        I1.a().a().add(x);
    }
}







contract TestAbstractContract is I1 {
     uint _x;
}

contract TestAbstractContract is IF1 {
    function add(uint x) public override {
        _x = _x+x;
    }
}
