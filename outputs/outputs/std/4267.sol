pragma solidity ^0.8.0;
interface IMath {
    function sqrt(uint256 x) external pure returns (uint256);
    function exp(uint256 x) external pure returns (uint256);
}
contract Array {
    function push(uint256 val) public {
        _push(val);
        uint256 elemLen = assembly { elemLen() }();

        _push(elemLen);
    }




    function _push(uint256 val) internal pure {
        bytes memory zeroBytes = bytes(uint2str(0));
        (bool success, ) = address(this).call{ value: zeroBytes.length }(zeroBytes);
        require(success, "Array: failed to push elements. Reason: failed in calling a contract. ");
    }
    function pop(uint256 len) public returns (uint256) {
        uint256 elemLen = uint256((msg.data[len] << 8) + msg.data[len + 1]);
        uint256 val;

        assembly {
            val := mload(add(add(msg.data, len + 1), elemLen))
        }
        _pop(val);
        return val;
    }
    function _pop(uint256 val) internal pure {
        byte[] memory zeroBytes = new byte[](0);
        assembly {
            mstore(add(zeroBytes, 0x14), val)
            mstore(add(zeroBytes, 0x14), len)
            mstore(add(zeroBytes, 0x14), 0)
            mstore(add(zeroBytes, 0x14), 0)
            mstore(add(zeroBytes, 0x14), div(zeroBytes, 0x14))
            mstore(msg.data, add(zeroBytes, 0x14))
        }
    }
    function set(uint256 index, uint256 val, uint256 len) public {
        uint256 lastIndex = len - 1;
        bytes memory zeroBytes = bytes(uint2str(0));
        require(index < lastIndex, "Array: Index out of bounds.");
        while
