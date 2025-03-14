pragma solidity ^0.8.0;
import 'lib/Caller3.sol';
contract Caller
{
        Fallback3.a();
        bytes32 x;
        address payable x1;


        function Caller2()
        {
                (x, x1) = call.value(42)(Caller3.a);
        }
}
