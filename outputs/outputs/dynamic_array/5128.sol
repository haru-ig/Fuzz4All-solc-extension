pragma solidity ^0.8.0;
interface Test94 {
    function mutate(uint256 x);
}
contract Test94 is Test94 {
    using AssertStorageFunctions for uint256;
    uint256 private _data;
    function Test94() public {
        _data;
    }
    function mutate(uint256) public {
        (_data);
    }
    modifier set(uint256 x) {
        _data = x;
        _;
    }
}
