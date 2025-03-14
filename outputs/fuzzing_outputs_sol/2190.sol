pragma solidity ^0.8.0;
contract Mutater336 {
    constructor(){
        count;
    }
}
contract Caller {
    Mutater335 public mutater;
    constructor(Mutater335 _mutater) {
        mutater = _mutater;
    }
    function mut() mut {
        mutater;
    }
    function mut2() mut {
       mutater2;
    }
}
contract Caller2 {
    Mutater336 public mutater;
    constructor(Mutater336 _mutater) {
        mutater = _mutater;
        mutater2();
    }
    function mut() mut {
        mutater;
        mutater2;
    }
    function mut2() mut {
        mutater2;
    }
}
