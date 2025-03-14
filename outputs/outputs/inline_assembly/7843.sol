pragma solidity ^0.8.0;
contract L23{
    function returnsFunction(uint a) pure public returns(uint) {
        return a;
    }
    constructor() public {
        deployCalled();
    }
    function deployCalled() public {
        returnsFunction(1);
        x;
        (uint x) = 1;
        y();
    }
}
contract L{
    function test(L23 _l) public {
        uint a = 8;
        (uint b) = _l.returnsFunction(8);
        (uint c) = _l.returnsFunction;
    }
}
