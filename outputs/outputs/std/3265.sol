pragma solidity ^0.8.0;
contract multiply{
    uint i;
    function f() public
    returns (uint){
    uint x=0;
    x=x+i;
    return x;
    }
    function bar() public{
    Multiply multiplyObj;
    multiplyObj.f(i);
    }
}

pragma solidity ^0.8.0;
contract Test {
    function foo()
        public
        pure
        returns (uint)
    {
        return 1;
    }

    function bar() public {
        return foo() + 1;
    }
}
