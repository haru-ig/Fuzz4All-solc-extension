pragma solidity ^0.8.0;


contract Fallback7
{
        fallback function () public {
            uint64 x;
            assembly {
                let x := mload(0x40)
                mstore(0x40, add(x, 3058265)
                )
            }
        }



        function f() public
        {
            uint64 x;
            x = 42;
            write(x);
        }
}
