pragma solidity ^0.8.0;
contract Bar{
    function foo();

    function bar(uint _a){
        for (uint i = 0; i < 10; i++){foo();}

    }
}
