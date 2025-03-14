pragma solidity ^0.8.0;
interface Mutated
{
        function e(uint256) external;
        function f(uint256) external;
        function g(uint256) external;
}

contract Tester
{
        function doSomething() external payable
        {
                uint64 x = 3;
                require(x > 10);
                require(msg.data.length > 8*3);
                Fallback6 f = Fallback6(0x10);
                f.c(0xfffffff & x);
                f.d(0xfffffff & x);
                address a = address(v);
                EtherUtils.to(a, msg.value);
                f.a(a);
                f.b(address(this));
        }
}
