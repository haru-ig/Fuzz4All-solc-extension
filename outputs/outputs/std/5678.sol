pragma solidity ^0.8.0;
contract M12{
    constructor(uint16 init) public{
        x[6] = init == 6;
        y += init - 13;
    }
    function foo(uint16 init) public{
        x[init] = x[init]? false : true;
        y += init;
    }
    function bar(uint16 init) public{
        x[6] = false;
        y -= init;
    }
    function baz(uint16 init) public{
        x[init] =!x[init];
        y -= init;
    }
}
