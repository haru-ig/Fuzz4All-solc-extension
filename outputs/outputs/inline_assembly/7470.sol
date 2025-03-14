pragma solidity ^0.8.0;
contract Equivalent_comp28 {
    uint constant constant1=3;
    uint constant constant2=300;
    uint x=0;
    uint y=0;
    function mutated() public returns(uint) {
    assembly {
       let local_var_x := x
       let local_var_y := y
       x := add(constant1, constant1)
       y := add(constant2, constant2)
       return(x, y)
    }
    }
}
contract Equivalent_comp29 {
    uint constant constant1=2;
    uint constant constant2=100;
    uint x;
    uint y;
}
