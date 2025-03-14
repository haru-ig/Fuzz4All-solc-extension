pragma solidity ^0.8.0;
contract Test24 {
    struct fooStruct {
        uint8 bar;
        uint8 baz;
        uint8 qux;
    }

    function set(address a, uint8 b) {
        fooStruct memory structToAssign;
        structToAssign.bar = b;
        fooStruct[] memory fooArrayToAssign;
        fooArrayToAssign.push(structToAssign);

        fooStruct[] memory fooArray;
        fooArray = fooArrayToAssign;

        bytes memory fooBytes = "Hello World";

        foo = a;
    }
}
