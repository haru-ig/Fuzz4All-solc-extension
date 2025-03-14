pragma solidity ^0.8.0;
library Array1
{
     function f1 (
        s2[] memory a
     ) external pure returns (bool) {
     return a[0].z < a.length;
    }

    function f2 (
        s2 memory a
     ) external pure returns (bool) {
     return a.z < a.length;
    }

    function f3 (
        s2 memory a,
        s2 memory b
     ) external pure returns (bool) {
     return a.z < b.z;
    }
}

pragma solidity ^0.8.0;
library Array2
{
    uint n;
    function f1 (
        s2[] memory a
    ) external pure returns (s2[] memory) {
        address b = address(a);
        for (n = 0; n < a.length; b=add(b, 0x1), n++) {

        a[0].z < b.length + n; not b.z < b.length + n;
        a[0].z < b.length + n; not b.z < a.length + n;
        }
        a[0].z < b.length + n;
        return a;
    }
}
