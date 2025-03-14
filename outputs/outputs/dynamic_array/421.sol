pragma solidity ^0.8.0;
contract test5
{
    function test() public {
        test4 storage s = test4(address(uint(keccak256(abi.encode(s.x())))));
        for( uint i = 0; i < 10000; i++)
        {
            s.x += 1;
        }

    }
    function test2() public {
        test4 storage s = test4(address(uint(keccak256(abi.encode(keccak256("hax 0xe4"))))));
        for( uint i = 0; i < 10000; i++)
        {
            s.x += 1;
        }

    }
}
