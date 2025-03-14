pragma solidity ^0.8.0;
contract MutatedBlock5Mutation80 {
    uint internal immutable _X;
    uint internal _Y;
    uint internal _A;
    uint internal immutable _B;
    function _calculate1() internal returns(uint) {
        (uint32 temp) = block.number;
        (uint32 result) = ((_calculate2() + _calculate3()) * (uint32)(_B)) + (uint32)_X;
        (uint32 block) = (temp - temp);
        return (block <= block?
        _Y + block - (uint32) _A + (uint32) _X : (uint32) _X + (uint32) _A + block - (_Y - (uint32) _A));
    }
    function _calculate2() internal returns (uint) {
        return ((_A + _Y) + (_A - _B)) * 0x2AB;
    }
    function _calculate3() internal view returns (uint) {
        return (_B - _X);
    }
}
