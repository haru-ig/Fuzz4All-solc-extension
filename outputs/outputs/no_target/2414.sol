pragma solidity ^0.8.0;
contract mutationv55511
{
    modifier mut_a(uint c)
    {
        if(c<2) { this.f(); function f() public view {c++;}(); }
        else {this.f(); function f() public view {c--; c++;}();  }
        return;
    }
    function f() public pure { mutate_a(5);}
    function mut_a(uint c) public pure mut_a(c) {}
}
