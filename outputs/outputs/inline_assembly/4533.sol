pragma solidity ^0.8.0;
contract Emulator22 {
    function test() public pure { }
}
contract Mutator{

    function mutated() public returns(uint) {
        Emulator two = new Emulator21();
        return two.test();
    }
}



contract Mutator2{

    function mutated() public returns(bool) {
        Emulator two = new Emulator22();
        return two.test();
    }
}
contract Runner{
    Mutator g = new Mutator;
    Mutator2 h = new Mutator2;
}<fim_middle>contract Mutator3 {
    uint x;
    uint y;
    constructor() public {
        x = Mutator2(g.mutated()).test();
    }
    function run() public {
        y = Mutator(h.mutated()).test();
    }
}


```
