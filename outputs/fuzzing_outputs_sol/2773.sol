pragma solidity ^0.8.0;
contract Caller2 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {}
    fallback() external payable virtual {   }
}

pragma solidity ^0.8.0;
contract Caller3 {
    bytes32 internal _addr;
    constructor() { _addr = bytes32(0xffffffff); }
    receive() external payable {
        _addr = bytes32(address(this));
    }
    fallback() external payable virtual {
        _addr = _add();
    }
    function _add() private view returns (bytes32) {
        uint256 addr;
        assembly { addr := add(_addr, calldataload(0)) }
        return addr;
    }
}

pragma solidity ^0.8.0;
contract Caller4 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {}
    function _transfer(address payable to, uint256 in) internal {
        assembly {
            let payloadSize := mload(calldataload(0))
            let to := mload(add(to, 0x20))
            let toLen := mload(add(to, payloadSize, 0x20))
            let toVal := mload(add(to, payloadSize + toLen, 0x20))
            let fromLen := in
            let fromVal := in
            let inVal := 0

            let m := 0
            let d := 604800
            let i := add(toVal, 0xfc)
            mstore8(i, m)
            i := add(fromVal, 0xfc)
            mstore8(add(i, 0x3010), 0)
            mstore8(add(i, 0x3014), d)
            mstore8(add(i, 0x3018), 0)
            i := add(inVal, 0xfc)
            mstore8(add(i, 0x3020), 0)
            i := add(toVal, 0xfc)
            let out := calldataload(0xc0)
            calldatacopy(mstore8(add(i, 0x3024), payloadSize + toLen), inVal, payloadSize)
            out := mload(add(out, 4))
            if and(out, 0xfbf8009a) < 0 {
                revert(0,0)
