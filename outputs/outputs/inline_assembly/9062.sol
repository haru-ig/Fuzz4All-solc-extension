pragma solidity ^0.8.0;
interface I
{
    function a() external pure returns(uint);
}
library Lib
{
    function get() public pure returns(uint storage) {
        assembly {
            storage := _slot_add(100, 10)
        }
    }

}
interface I
{
    function c() public pure returns(uint);
}
library Lib
{
    uint a;
    constructor() public
    {
        a = Lib.add(Lib.add(45, 35), 2);
    }
}
pragma solidity ^0.8.0;
contract C {
    uint d = 70;
    function f() public pure returns(uint)
    {
        return Lib.add(10, d);
    }
}
