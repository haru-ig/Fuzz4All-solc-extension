pragma solidity ^0.8.0;
interface Interface {

    function modify(uint256) external;
}
contract Equivalent {
    MutatedDynamicArrays6 m;
    Interface i;
    function initialize() public {
        i.modify(25);
        delete i;
        m.modify(5);
    }
}
