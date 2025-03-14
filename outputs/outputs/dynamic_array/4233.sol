pragma solidity ^0.8.0;
contract G {
    struct Foo {
        uint my_uint;
    }
    struct Bar {
        uint[20] my_uint;
    }
    uint256 x[3];
    constructor(Foo[] memory input) public {
        for(uint i=0; i < input.length; i++) {
            x[0] += input[i].my_uint;
        }
    }

}
