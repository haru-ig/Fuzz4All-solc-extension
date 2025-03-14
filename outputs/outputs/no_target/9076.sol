pragma solidity ^0.8.0;
contract mutators_v0_7_2 is mutators_v10_v2_2{
    function equivalent() public override {
        array_v07v[block.number] -= 1;
        block.number = array_v07v[block.number] + 1;
    }

}
