pragma solidity ^0.8.0;
contract Mutater3352 {
    Mutater335 internal foo;
    constructor(address payable _foo) {
        foo = Mutater335(_foo);
    }
    receive() payable external {
        foo;
    }
}



pragma solidity ^0.8.0;
contract Mutater3353 {
    Mutater335 internal foo;
    Mutater335 internal bar;
    constructor(address payable _foo, address payable _bar) {
        foo = Mutater335(_foo);
        bar = Mutater335(_bar);
    }
    receive() payable external {
        bar;
        foo;
    }
}
