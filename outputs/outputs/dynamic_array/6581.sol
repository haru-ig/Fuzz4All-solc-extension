pragma solidity ^0.8.0;
contract T9ES_mut_2 {
    uint i;
    uint i1;
    uint i4;
    address a;
    address a1;
    T9ES_mut mut;

    function _mutate() public returns(bool, uint)
    {
        uint old1 = mut.i1;
        uint old2 = mut.i2;
        uint old4 = mut.i4;
        mut.i1 += 100;
        mut.i2 = a;
        mut.i4 = 5;






        mut.i1 = old1 + 1;
        return (false, 1);
    }
}
