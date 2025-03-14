pragma solidity ^0.8.0;
 contract mutation01u64m2
{
    function()
    {
        var a2;
        unchecked{
            a2 = new function()()mutable returns(uint){return 0x2;}();
        }
    }
    constructor (uint a){
        a2 = a;
    }
}
