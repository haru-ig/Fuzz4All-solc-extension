pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantics_8 {
    uint[] x;
    uint a;
    uint b;
    function () public {
        a = 0;
        b = 0;
        x = new uint[](2);
        x[0] = 0;
        x[1] = 0;
    }
    function doWork() public returns(uint){
        return x[0];
     }
}
