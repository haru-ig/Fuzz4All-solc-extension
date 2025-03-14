pragma solidity ^0.8.0;
contract SafelyMutatedByCompiler {
    uint constant zero = 0;
    address constant zeroAddress = address(0);

    function test() public view returns (bool) {
        bool _var = (zeroAddress & 1== 1);
        assembly {
            mstore(0x40, add(mload(0x40), 0x20000000000000000000000000000000000000000000))
            mstore(0x40, add(add(mload(0x40), 0x200000000000000000000000000000000000000000), 0x100000000000000000000000000000000000000000000000))
        }
        (zero,_) = (zero,address(this));
        return _var;
    }
}
