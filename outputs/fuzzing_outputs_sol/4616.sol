pragma solidity ^0.8.0;
contract Mods {
    constructor() { }
    function addOne(uint a) public view {
        a++;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function useCallerWithFallback(Mods mod) public {
        assert(mod.addOne(9) == 10);
    }
}
