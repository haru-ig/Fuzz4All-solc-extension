pragma solidity ^0.8.0;
interface Fallback4
{
        function c(uint64 x) external;
        function d(uint64 x) external;
        function a(uint64 x) external;
}

pragma solidity ^0.8.0;
contract Mutator
{

        modifier payableFall
        {
                require(msg.value == msg.value, "Incorrect msg.value argument.");
                _;
        }


        modifier fall
        {
                _;
        }

        fallbackFall () payableFall;
        fallback() fall;
}
