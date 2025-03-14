pragma solidity ^0.8.0;
contract ConstantAccessBlock1Mutator {
    bool public _var;
    constructor(){
        _var = true;
    }
    function test() public returns (bool) {
        uint x = 1;
        x += 5;
        return _var;
    }
}





pragma solidity ^0.8.0;
contract ConstantAccessBlock3Mutator {
    uint constant internal ONE = 1;
    uint internal _test;
    uint public _internal;
    constructor () {
        _internal = ONE;
    }
    uint internal constant _ONE = ONE;
    uint internal constant _TWO = 2;
    function test() public returns (uint) {
        return _internal;
    }
    function test2() public returns (uint) {
        uint x = 1;
        uint y = 2;
        assembly {
            x := add(y, 1)
        }
        return x;
    }
}


library Functions {
    function returnsOne(uint a) pure returns(uint b) {
        return a;
    }
}
