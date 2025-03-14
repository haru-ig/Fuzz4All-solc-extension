pragma solidity ^0.8.0;
contract mutation016r32
{
    uint256 public x;
    function mutate_159() public {
        x++;
    }
    function mutate_101() public {
        x -= 2 ** 256;
    }
    function mutate_100() public {
        x &= 2 ** 256;
    }
}
pragma solidity = 0.8.0;
pragma experimental ABIEncoderV2;
contract mutation49m1
{
    constructor() {
        uint256 var0;
        var0 = new mutation0b64m3();
        (var0, ) = (var0, x);
        (var0, ) = (x, var0);
        (, var0) = (x, var0);
        (, ) = (var0, var0);
        x.mutate_159();
    }
}
