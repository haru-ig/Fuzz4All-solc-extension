pragma solidity ^0.8.0;
contract Example {
    uint x;
    uint y;
    function f() public returns (uint){
        uint temp1 = x + y;
        uint temp2 = temp1 + y;
        uint temp3 = temp2 + y;
        uint temp4 = temp3 + x;
        if(y < 100){
            temp4 += y;
        }
        uint final = x + temp2 + y;
        return final + temp4 + y;
    }
}
