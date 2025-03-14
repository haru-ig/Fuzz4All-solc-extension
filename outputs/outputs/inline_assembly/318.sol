pragma solidity ^0.8.0;
contract F2 {
    uint a;
    uint public b;
    function add (uint a_, uint b_) public {
        a = a_;
        b = b_;
    }
    function add_internal (uint a, uint b) public view returns (uint){
        return (a xor b);
    }
}
