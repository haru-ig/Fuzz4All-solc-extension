pragma solidity ^0.8.0;

contract d {
  function f() public {
    uint16[] o = new uint16[](5);

    uint16[] p = new uint16[](o.length + 2);
    o[p.length] = 1;
    o = new uint16[](p.length + 2);
    p[p.length] = 1;

    uint16[] q = new uint16[](2 * o.length + 2);
    q = new uint16[](3 * o.length + 2);

    uint16[] r = new uint16[20];
    uint16[] s = new uint16[](o.length + o.length);

    uint16[] t = o;
  }
}




pragma solidity ^0.7.4;

contract C {
    uint[] public x;

    function f() public view {
        uint8[] memory arr = new uint8[](10);
        for (uint i = 0; i < 10; i++) {
            arr[i] = 1;
        }
        uint8[] memory u = new uint8[](10);
        u = arr;
        u = arr[1];
        x = u;

        for (uint i = 0; i < 6; i++) {
            x[i] = 0;
        }
        uint u_;
        uint arr_;
        bool arr1_;
        buint32 buint32_;
        address ad_;
        address[2] memad_ = new address[](2);
        memory mem = new uint8[](7);
        memory arrb;

        x = x + arr[1];
        uint8[] memory arr2 = new uint8[](32);
        require(arr[1] >
