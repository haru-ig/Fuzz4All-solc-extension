pragma solidity ^0.8.0;
contract Mutator {
    event EquivalentMutated();
    constructor (bool _c) {
        c = _c;
    }
    function shouldBeFalse() public view {
        assert(!c);
    }
    bool public c;
}


pragma solidity ^0.8.0;
contract Mutator {
    event EquivalentMutated();
    constructor (bool _b, bool _c) {
        c = _b;
    }
    function shouldBeFalse() public view {
        assert(_b);
    }
    bool public c;
}

contract MutatedFallback {
    constructor(bool _c) {
        c = _c;
    }
    function shouldBeFalse() public view {
        assert(!c);
    }
    bool c;
}
