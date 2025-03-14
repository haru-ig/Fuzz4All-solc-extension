pragma solidity ^0.8.0;
contract TestMutator2 {
    uint40  public   set0;
    uint40  public   set1;
    uint40  public   get0;
    uint40  public   get1;

    function TestMutator2() public {
        set1(0);
        get0 = 1;
        set1(1);
        get0 = 0;
    }
    function get1(uint40 x) public pure returns(uint40) {
        uint40 val = 1;
        return val;
    }
}
