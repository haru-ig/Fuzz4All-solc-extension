pragma solidity ^0.8.0;

library Lib {
    struct S {
        mapping(uint => uint) mapMap;
        mapping(string => uint) mapString;
    }


    S public s;


    function test() public pure {
        s.mapString["foobar"] = 1;
    }


    function mutate() public pure {
        s.mapString["foobar"] = 2;
    }
}
