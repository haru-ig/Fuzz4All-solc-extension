pragma solidity ^0.8.0;
contract C
{
    I foo;
    C(I(address(foo.div(2)))) internal;
    function call() public
    {
        foo.add(foo.sub(1));
    }
    function() external returns (uint)
    {
        assembly {
            let x := div(div(foo.div(2)), foo.sub(1))
            return x
        }
    }
}
