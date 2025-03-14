pragma solidity ^0.8.0;
contract Array_equivalent_2 {
   uint x[1];
   function () external {x[1]++;}
}


contract Array_equivalent_2_original {
    uint[] a;
    function (uint x, uint y) {a = [x, y];}
    function () {
        if (a[0]!= uint(a))
            revert();
    }
}
