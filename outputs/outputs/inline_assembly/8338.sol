pragma solidity ^0.8.0;
contract MutateAssembly9 {
    function test() public {
        (uint[] storage u, uint[] memory v) = (new uint[](3), new uint[](9));
        uint[] storage u_;
        uint[] memory v_;
        uint[] memory u__ = new uint[](1);
        uint[] memory v__ = new uint[](6);
        (uint[] storage i, uint[] memory j) = (new uint[](6), new uint[](3));
        (uint[] storage i, uint[] memory j)__ = (new uint[](12), new uint[](9));
        asm {
            mstore(0x0, mload(0x0))
            let m:= sub(mload(0x0), mload(0x0))
            mstore(0x0, m)
            mstore(0x0, 1)
            const0(16)
            mstore(0x0, 0)
            mstore(0x0, m)
            mstore(0x0, m)
            mstore(0x0, m)
            mstore(0x0, m)
            mstore(0x0, m)
            mstore(0x0, m)
            mstore(0x0, m)
            mstore(0x0, m)
            mstore(0x0, m)
            mstore(0x0, m)
            mstore(0x0, m)
            mstore(0x0, m)
            mstore(0x0, m)
            mstore(0x0, 1)
            return
            mstore(0x0, 1)
            let m:= mload(0x0)
            mstore(0x0, m)
            let m_: mload(0x0)
            mstore(0x0, m_)
        }
    }
}
