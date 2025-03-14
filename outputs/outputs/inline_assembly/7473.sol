pragma solidity ^0.8.0;
contract Equivalent_comp28 {
    uint constant constant1=2;
    uint constant constant2=100;
    uint x=0;
    uint y=0;
    function mutated_comp()
    {
        x+=2;
        x=x+constant1;

        x--;
        x-=2;

        x*=2;
        x*=constant2;

        y-=constant2;
        y=y==constant1?y:y+2;
    }
}
