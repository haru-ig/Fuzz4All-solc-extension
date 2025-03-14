pragma solidity ^0.8.0;
import 'inlineassembly.sol';
contract MyY{
    uint public x ;
    uint public x2 = 99;

    function z(uint256 a){
        uint256 y = a+x;
        a += x;
        y += x;
        a = a*a+x+2;
        return a;
    }
}
