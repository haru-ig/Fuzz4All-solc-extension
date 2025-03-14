pragma solidity ^0.8.0;

contract SemanticallyEquivalentM17V2 {
    constructor () public {
        uint16[20] memory  x = new uint16[](20);
        x[0] = 1;
        assembly {
            x[1] := x[0]
        }
        emit Log17("1");
    }

    event Log17(string);
}
