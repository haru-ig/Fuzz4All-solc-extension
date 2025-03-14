pragma solidity ^0.8.0;
contract SemanticallyEquivalenceMutationsFallback
{
    uint public x__;
    uint public y__;
    modifier x_greater_than_y_less_than_400() {
        require(x>y && x<400);
        _;
    }
    modifier y_greater_than_x_less_than_100() {
        require(y>x && y<100);
        _;
    }
    constructor(){
        x__ = 400;
        y__ = 100;
    }
    function test() public payable x_greater_than_y_less_than_400,y_greater_than_x_less_than_100{
        assert(x > 400);
        assert(y > 100);
    }
    function test_fail() public payable x_greater_than_y_less_than_400{
            assert(x > 400);
            revert();
    }
}
