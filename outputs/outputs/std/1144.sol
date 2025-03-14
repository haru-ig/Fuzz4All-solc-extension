pragma solidity ^0.8.0;

pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract Array {}
contract Array {
    function addOneTogether(uint256[2] memory a)
        pure
        returns (uint256)
    {
        uint256 b = a[1] + 1;
        return b;
    }
}
contract Array {
    function multiply2(uint256[2] memory a)
        pure
        returns (uint256, uint256)
    {
        (uint256 c, uint256 d) = (a[0] * a[1], a[0] * a[1] + a[1]);
        return (c, d);
    }
}
contract Array {
    function multiply(uint[3] memory a)
        pure
        returns (uint[3] memory)
    {
        (uint memory c0,uint memory c1,uint memory c2) = multiply2(a);
        (uint memory d0,uint memory d1,uint memory d2) = multiply2(a);
        return (uint[3](c0,c1,c2),uint[3](d0,d1,d2));
    }
}
contract Array {
    function findMinimum(uint[4] memory a)
        pure
        returns (uint256)
    {
        return
            a[1] +
            a[0] * (a[1] < a[2]? 1 : 0) +
            a[1] * (a[1] < a[3]? 1 : 0) +
            a[2] * (a[1] < a[3]? 1 : 0);
    }
}
contract Array {
    function findMaximum(uint[4] memory a)
        pure
        returns (uint256)
    {
        return
            a[1] +
            a[0] * (a[1] > a[2]?"1":"0") +
            a[1] * (a[1] > a[3]?"1":"0") +
            a[2] * (a[1] > a[3]?"1":"0");
    }
}
contract Array {
    function findMiddle(uint[4] memory a)
        pure
        returns (uint256)
    {
        return a[2] + a[3];
    }
}
contract Array {
    function sum4(uint[6] memory a)
        pure
        returns (uint256)
    {
        (uint memory a0,uint memory a1,uint memory a2,uint memory a3) =
            (a[0], a[1], a[2], a[3]);
        return a0 + a1 + a2 + a3;
