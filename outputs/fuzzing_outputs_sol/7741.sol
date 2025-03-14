pragma solidity ^0.8.0;
contract Caller {
    fallback constructor() {}
    function _fallback(uint _value) external {
        uint _c = _value / 8;
        assembly {
            let x := mload(40)
            mstore(40, add(mload(0), sub(mload(40), add(mload(1), mul(mload(3), add(_value, 15))))))
        }
        assert(_c == old);
        fallback();
    }
    fallback() {}
    uint public old;
}
