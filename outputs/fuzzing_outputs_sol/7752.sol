pragma solidity ^0.8.0;
contract FallbackMutatingPayable {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value += msg.value; returnValue = _v; }
    fallback() external payable {
        value += msg.value;
    }
    function getReturnValue() public pure returns (uint256) {
        return returnValue;
    }
}


pragma solidity ^0.8.0;
contract LowLevelHigherOrder {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value += msg.value; }
    fallback() external payable {
        value += msg.value;
    }
}


pragma solidity ^0.8.0;
contract LowLevelMutuallyCalling {
    function set(uint256 v) internal {
        setValue(v);
        callWithLowLevel(v);
    }
    function getValue() public view returns (uint256) {
        return value;
    }

    function callWithLowLevel(uint256 v) private {
        address caller;
        uint256 result;
        assembly {

            returndatacopy(0x0, 0x0, 32)

            calldatacopy(0x0, 32, 32)

            let _size := returndatasize()
            let _offset := add(_size, 32)
            mstore(_offset, add(0x40, sub(_size, 32)))

            mstore(0x0, _size)

            result := mload(0x40)

            if result == 10000000000000000000000 {
                jump(0)
            }
        }
        revert("test reverted");
    }

    uint256 internal value;


    uint256 internal oldValue;
