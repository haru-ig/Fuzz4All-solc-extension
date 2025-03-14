pragma solidity ^0.8.0;
contract T8FA_mutator_2d {
    uint256[] public a;
    uint256[] public b;
    uint256[] public c;

    constructor() public {
        a.push(0);
        a.push(1);
        a.push(2);
        a.push(3);
    }

    function add_zeroth(uint256 v) public{
        a.push(0);
    }

    function add_oneth(uint256 v) public returns (uint256){
        for(uint256 i=0; i<2; i++)
            a.push(1+2*i);
        return (1+add_zeroth(0));
    }

    function test() public{
        (a[0],b[1]) = ([100, 1], [1, 2]);
        a[1] = 0;
    }
}
