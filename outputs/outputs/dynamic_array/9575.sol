pragma solidity ^0.8.0;
contract Main3 {
    struct InnerData {
          uint32 x;
          uint32 y;
    }

    struct OutputData {
          uint32 a;
          uint32 b;
          InnerData[] a_list;
    }

    function a() public returns (uint32, uint32, uint32[]) {
        OutputData memory x = OutputData(0, 1, [InnerData(0, 0)]);
        (OutputData memory y, uint32 x) = (x, 0);

        return (y.a, y.b, y.a_list[0].y);
    }
}
