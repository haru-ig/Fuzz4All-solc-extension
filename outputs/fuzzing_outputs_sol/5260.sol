pragma solidity ^0.8.0;
interface Fallback4
{
        function a64(uint64 data) payable external;
}

pragma solidity ^0.8.0;
contract Caller
{
        function call(Fallback3 f) payable
        {
                f.a(1);
        }
}
