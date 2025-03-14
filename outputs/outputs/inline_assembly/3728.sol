pragma solidity ^0.8.0;
contract SemanticallyEquivalent4MutatedAndOptimized {
  function h() view internal returns (int) {
    uint256 _h = constantValue;
    uint256 i = 0;
    uint256 _count = 0;
    uint256 prevYul = _h;
    _count = constantValue;
    if (i == 1) {
      prevYul += constantValue;
    } else if (i == 2) {
      prevYul -= constantValue;
    } else if (i == 3) {
      prevYul = 2 * prevYul;
    } else if (i == 4) {
      uint32 divId = constantValue;
      prevYul /= divId;
    }
    return int(_h);
  }
  uint8 constant constantValue = 1500;

}


contract SemanticallyEquivalentInlinedMutatedAndOptimizedTest {
    function TestBasicContract() public pure {
        uint t0 = block.timestamp;
        uint t1 = block.timestamp + 1;
        uint t2 = block.timestamp + 2;

        int x = SemanticallyEquivalent1MutatedAndOptimized.h();
        assert(x == int(Constant1));
        uint8 u8 = SemanticallyEquivalent2MutatedAndOptimized.h();
        assert(u8 == uint8(Constant2));
        uint16 u16 = SemanticallyEquivalent3MutatedAndOptimized.h();
        assert(u16 == uint16(Constant3));
        int32 i32 = SemanticallyEquivalent4MutatedAndOptimized.h();
        (u32, u64) = SemanticallyEquivalent5MutatedAndOptimized.h();
        uint u = uint(i32 + u64);
        uint8 u8b = u8;
        uint16 u16b = u16;

        int y = SemanticallyEquivalent1MutatedAndOptimized.h();
        int xd = SemanticallyEquivalent2MutatedAndOptimized.h();
        int32 i32d = SemanticallyEquivalent3MutatedAndOptim
