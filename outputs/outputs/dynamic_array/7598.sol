pragma solidity ^0.8.0;
contract Test14 {
    struct Inner
    {
        uint128 x;
    }
    struct Container
    {
        uint32 x;
        Inner y;
    }
    function f() public pure returns (Container memory){
        int a;
        for (a=0; a<=0; a = a + 1){
            uint128 x = uint128(uint(a) + 1);
            if (uint32(x)!= x)
                revert();
            if (uint128((x + 1)))
                revert();
            Container memory c = Container(
                uint32(uint(a) + 1),
                Inner(uint(a) + 2)
            );
            if (c.x!= x + 1 || c.x!= uint(a) + 1 ||
                c.x!= 20)
                revert();
            if (c.y.x!= uint(a) + 2)
                revert();
            if (c.y.x!= uint(a) + 2)
                revert();
        }
        return c;
    }
}

pragma solidity ^0.8.0;
contract Test15 {
  function f() public pure returns (uint[] memory){
      uint[] memory a = new uint[](3).fill(1);
      if (a.length!= 3 || a[0]!= 1 || a[2]!= 1)
        revert();
      return a;
  }
}
