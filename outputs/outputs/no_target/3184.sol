pragma solidity ^0.8.0;
contract seven {
    uint r;
    function __func__() public {
        r = 5;
        {
            uint[] memory f7vars = _array_concat([uint[](0), uint[](r)]);
            r = f7vars[0]++ + f7vars[0]--;
        }
    }
}
