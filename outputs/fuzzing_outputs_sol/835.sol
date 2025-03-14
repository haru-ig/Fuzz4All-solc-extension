pragma solidity ^0.8.0;
contract BreadMilkExample {
    uint256 _bout;
    function modify(uint _c) public pure {
        _bout += _c;
    }
}
