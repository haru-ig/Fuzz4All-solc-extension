pragma solidity ^0.8.0;
import "../../callers/CallerSemi.sol";

contract FallbackCall
{
    CALLER Semi semi;

    constructor(CALLER Semi _sem)
        { semi = _sem; }


    receive () payable public{
        semi.get();
    }
}
