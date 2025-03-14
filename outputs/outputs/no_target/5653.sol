pragma solidity ^0.8.0;
contract C {
    function f1(bool _b) private returns (uint[2]){
        uint a0;
        uint b0;

        if(_b)
        a0 = 0;
        else
        a0 = 5;


        if(_b)
        b0 = a0;
        else
        b0 = a0-1;

        return([a0,b0]);
    }
}
