pragma solidity ^0.8.0;
contract UnmutatedFallbackModifier {
    receive() external payable {}
    function fallback() external payable {
    }
    fallback() external payable {
    }
}
library ReentrancyGuard {
    uint256 internal constant _NOT_ENTERED = 0;
    uint256 internal constant _ENTERED_BEFORE = 1;
    uint256 internal constant _BUSY = 2;

    modifier nonReentrant() {
        uint256 internal status = _getState();
        require(status!= _BUSY, "ReentrancyGuard: reentrant call");
        uint256 internal stackDepth = _getStackDepth();
        _setStackDepth(stackDepth + 1);
        _;
        _checkStackDepth(stackDepth);
        _setStackDepth(stackDepth);
    }

    function _checkStackDepth(uint256 stackDepth) internal view {
        require(stackDepth >= _getStackDepth(), "ReentrancyGuard: stack level exceeds depth");
    }

    function _getStackDepth() internal view returns (uint256) {
        return _callP()._stackDepth;
    }
    function _setState(uint256 state) internal {
        assembly {
            mstore(0x40, add(0x80, 0x30))
            mstore8(add(0x40, 0x38), state)
        }
    }
    function _callP() private view returns (address payable) {
        address payable ptr;
        assembly {
            ptr := mload(0x40)
        }
        return ptr;
    }
    function _setStackDepth(uint256 stackDepth) internal {
        assembly { mstore(0x40, add(ptr, 0x020)) }
        _updateReentrancyStackDepth(stackDepth);
        assembly { mstore(ptr, 0x60) }
    }
    function _updateReentrancyStackDepth(uint256 stackDepth) internal {
        uint256 callDepth = add(uint256(mload(0x40)), 0x30);
        if (callDepth < 32000) callDepth = 32000;
        assembly { mstore8(ptr, sub(callDepth, 16)) }
    }
    function _getState() internal view returns (uint256) {
        uint256 state;
        assembly { state := mload(0x40) }
        return state;
    }
}
