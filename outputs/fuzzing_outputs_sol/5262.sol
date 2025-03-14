pragma solidity ^0.8.0;
contract Contract2
{
        function use(uint64 val)
        {
                fallback(val);
        }
}
