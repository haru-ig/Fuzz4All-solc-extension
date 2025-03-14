pragma solidity ^0.8.0;
contract A {
    struct B{
        int _y;
        uint _x;
    }

    function modify(
        [a, b, c, d, e, f, g, h, i, j] memory data,
        [a, b, c, d, e, f, g, h, i, j] memory oldData,
        B memory data2,
        B memory oldData2
    ) public {
        data2._y = data2._y ^ data._y;
        data._y = oldData._y ^ data._y;
    }
}
