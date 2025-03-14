pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_5 {
    struct foo { uint p; uint q; }
    foo[] public y;
    constructor () public {
        y = new foo[2];
        y[0].p = 0;
        y[0].q = 1;
        y[1].p = 1;
        y[1].q = 0;
    }
    function doWork() public returns (uint, foo){
        return foo(y[0]).p;
     }
}
contract AssignmentModulation_Semantic_6 {
    struct foo { uint p; uint q; }
    foo[] public y;
    constructor () public {
        y = new foo[2];
        y[0].p = 0;
        y[0].q = 1;
        y[1].p = 1;
        y[1].q = 0;
    }
    function doWork(uint[] calldata _y) public returns(uint){
        return foo(address(_y[0])).p;
     }
}
