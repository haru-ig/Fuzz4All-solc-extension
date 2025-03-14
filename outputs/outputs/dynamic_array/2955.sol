pragma solidity ^0.8.0;
contract SymbolicEquality_MutatedArray {
    uint[] x;
        constructor (uint len) public {
        uint len_orig = l();
        x = [2,3,4];
        (uint[] memory x_orig) = d();
        (uint old_len) = m();
        if (old_len == 3 && x.length!= len_orig) {
            revert();
        }
    }
        function l() public pure returns (uint len) {
        return 0;
    }
        function m() public returns (uint oldLen, uint newLen) {
        oldLen = m_i();
        newLen = 0;
        return (oldLen,newLen);
    }
        function d() public returns (uint [] memory) {
        return [x,x];
    }
}
