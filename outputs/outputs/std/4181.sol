pragma solidity ^0.8.0;
contract Mutate{
    uint[5] memory x;
    function Mutations() public{
        uint x_max_value = 0xFFFFFFFFFFFF;
        x[2] = x[2] + 1;
        x[2] = x[2] + x_max_value;
        x[4] = x[2]*2;
        x[4] = x[2] / 2;
    }
}
contract TestMutatedArray{
    function testGetValues() public view returns(uint256[] memory ret){
        ret = x;
    }

    function getTestMutations() public{
        Mutate memory a;
        a.Mutations();
        uint[5] memory y = a.getTestValues();
    }
}
