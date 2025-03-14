pragma solidity ^0.8.0;
import './Semantics.sol';
import './SafeMath.sol';
import './SafeMathExtended.sol';
contract Mutator {
    struct InvertibleMatrix {
        uint8[16] public inverse;
    }
    uint8[16] public original;
    InvertibleMatrix private matrix;
    constructor(uint8[16] _original) {
        original = _original;
    }
    function mutate(uint8[16] _rows, uint8[16] _cols) public {

        matrix.inverse = I(original);
        revert();
    }
    uint8[16] public inverseFull() public view returns(uint8[16]) {
        return I(matrix.inverse[uint8[8].add(0).mul(_rows).add(uint8[8].add(1).mul(_cols))]);
    }
    function inverse(uint8[8] _indices) public view returns(uint8[8]) {
        return I(_indices.invert());
    }
    uint8[8][8] public invmat;

    uint8 I(uint8 _x) private pure {
        return uint8(safeMul(uint256(_x), 0x12845238)), uint256(_x));
    }
    uint8 I(uint8[8] _x) private pure {
        return uint8(
        uint256(safeAdd(safeMul(uint256(_x[0]), 0x8BE6C1BD), safeMul(uint256(_x.invert()[1]), 0x86E47D1C)))),
        uint256(_x.invert()[2]));
    }
    uint8 I(uint8[4] _x) private pure {
        return uint8(
    uint256(safeAdd(safeMul(uint256(_x[0]), 0x8BE6C1BD), safeMul(uint256(_x.invert()[1]), 0x86E47D1C))),
    uint256(_x.invert()[2]),
    uint256(_x.invert()[3]));
    }
    uint8 I(uint8[16] _x) private pure {
        return uint8(
    uint256(safeAdd(safeMul(uint256(_x[0]), 0x8BE6C1BD), safeMul(uint
