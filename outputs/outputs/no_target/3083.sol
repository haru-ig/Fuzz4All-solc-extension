pragma solidity ^0.8.0;
contract fourth{
    function f() internal pure {
        var x = 2;
        if(x > 0){
            x = x - 1;
        }
    }
    function g() internal pure {
        assert(x > 2);
    }
}
contract fifth {
    function f() public pure{
        call();
    }
    function call() public pure{
        third();
    }
}
