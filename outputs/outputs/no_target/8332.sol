pragma solidity ^0.8.0;
contract NewFunctionWithoutArguments {
    uint x=63491;
    function fWithoutArguments() {
        uint z = x;
        assert(z == 63491);
    }
}
