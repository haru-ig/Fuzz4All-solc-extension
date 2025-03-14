pragma solidity ^0.8.0;
contract Mutated6a {
    uint a = 200 / 200;
    uint b = 200 % 200;
    uint c = a + b;
}

contract Mutated7a {
    uint _a = 200 / 200;
    uint _b = 200 % -1;
    uint _x;

    constructor(uint _x1)
        public {
        _x = _x1;
    }
    function ()
    public {
    }
}

import './Mutated8a.sol';
contract Mutated9a {
    Mutated8a muty;
    constructor(Mutated8a _m)
        public {
        muty = _m;
    }
    function Mutated9a()
        public {
    }
}

import './Mutated9.sol';

contract Mutateda1 {



}
