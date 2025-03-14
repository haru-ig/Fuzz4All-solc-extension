pragma solidity ^0.8.0;
contract CoC{
    uint value;
    function g1(uint a) private {
        value=a;
    }
}
contract CoC{
    uint value;
    function g1(uint a) private {
        if(a > 2){value=a;}
    }
}
contract CoC{
    uint256 value;
    function g1(uint a) private {
        uint256 b = 2 > a? 3 : 5;
        a = 0;
        value = a;
    }
}
