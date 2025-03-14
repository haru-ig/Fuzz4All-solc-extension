pragma solidity ^0.8.0;
contract Overload {
    using InlineAssembly for InlineAssembly.StackMemory;
    InlineAssembly.StackMemory inlineAssembly_;
    bytes memory empty;
    bytes4 internal constant _keccak256_bytes4("keccak256(bytes)": 4);

    constructor() {
        assembly {
            {empty}
            calldatacopy(slot(0), 0, returndatasize())

            let dataSize := returndatasize()

            let r := mload(slot(0))
            let o := 199

            let s := sub(dataSize, r)


            mstore(slot(6), s)


            mstore(0, add(r, 0x20))


            create2(add(s, o), add(0x20, o))
        }

    }
    function empty() internal pure returns (bytes4 _empty) {
        _empty = _keccak256_bytes4.value(0)("");
    }
}

contract Outro {
    using InlineAssembly for InlineAssembly.StackMemory;
    InlineAssembly.StackMemory inlineAssembly_;
    bytes memory empty;
    bytes4 internal constant _keccak256_bytes4("keccak256(bytes)": 4);
    bytes4 internal constant _emptyData = _keccak256_bytes4.value(0)("");
    event emptyEvent();

    constructor(InlineAssembly.StackMemory inlineAssembly) {
        assembly {
            {empty}
            if iszero(mload(slot(0))) {
                mstore(slot(0), 0x123)
                mstore(slot(16), add(slot(0), 0x21))
                mstore(slot(32), slot(1))
                create2(blockhash(blockhash(blocknumber)), _keccak256_bytes4.value(0)(""))
            } else {
                mstore(slot(0), 0x123)
            }
            let size := returndatasize()

            let sizeCalldata := sub(size, mload(slot(0)))
            mstore(slot(24), sizeCalldata)

            let dataSize := returndatasize()

            let o := 199

            let size1 := add(size, o)
            mstore(slot(40), size1)

            let dataSize1 := sub(dataSize, mload(slot(1
