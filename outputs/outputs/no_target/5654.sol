pragma solidity ^0.8.0;
contract CoC{
    function g3(uint a) private {
        a = 0;
        a = 5;
        a = a + 5-(a+5);
    }
}
