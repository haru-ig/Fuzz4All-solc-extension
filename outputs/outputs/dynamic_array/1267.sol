pragma solidity ^0.8.0;
contract EquivalentArrayEraser {
    uint256[] public a;
    constructor ()
    {
        a.push(10);
        a.push(20);
    }
    function updateArray() public {
        uint256[] memory v;
        for (uint256 i = 0; i < a.length; i++) {
            v.push(a[i]);
        }
    }
    function restoreArray () public {
        a = v;
    }
}
