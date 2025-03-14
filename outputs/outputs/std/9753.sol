pragma solidity ^0.8.0;
contract MutateNeg2Mut {
    uint x = 100000000000000000000000000000000000;
    uint z2;
    function foo2() public {
        x = 987565623465;

        address addr = this;

        z2 = x;


        addr.call(abi.encodeWithSelector(0x57c5B6, this));
    }
}
