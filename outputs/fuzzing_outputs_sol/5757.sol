pragma solidity ^0.8.0;
import "./semanticallyequivalent19.sol";
contract semanticallyequivalent19fallback
{
    function test19() payable public {
       (x,y) = semanticallyequivalent19((x,y));
    }
}
