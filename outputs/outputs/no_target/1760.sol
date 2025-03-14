pragma solidity ^0.8.0;
contract Mutate2W {
    constructor (uint _counter) public {
        _counter = _counter;
    }
}

pragma solidity ^0.8.0;
contract Mutate2T {
    function runMutateW (uint _val1) public {
        Mutate2W x = new Mutate2W(0);
        x.set(0);
        delete x.set;
        x.set(_val1);
    }
}
