pragma solidity ^0.8.0;
contract M9 {
    uint b;
    constructor() {
        b = 1;
    }
    function divide(){
        b=b-(2*b);
    }
    function modify(){
        b=b+b*(b/2);
    }
    function double() public returns (uint,uint,uint){
        b = b+b;
        uint res0 = b;
        b = b+b;
        uint res1 = b;
        b = b+b;
        uint res2 = b;
        return (res0,res1,res2);
    }
}
