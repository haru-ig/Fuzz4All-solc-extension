pragma solidity ^0.8.0;
contract H {
    uint x;
    uint public myInt;
}
contract Mutate {
    function f() public {
        x = 1;
        myInt = 1;
    }
}
contract MyLib {
    function f() public {
        uint z;
        z = myInt + x;
    }
}
contract MutateLib {
    function m() public {
        myInt += x;
    }
}
main();
