pragma solidity ^0.8.0;
contract Dna {

    struct dna {
        uint public weight;
        uint public a;
        uint public b;
    }
    dna public bla;

    function newDna(uint _a, uint _b, uint _c) public {
        bla.a = _a;
        bla.b = _b;
        bla.weight = _c;
    }
}
