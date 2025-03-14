pragma solidity ^0.8.0;
contract NewSemanticsFallbackMutatingNonPayableFixedSize {
    uint256 public constant size = 40;
    bytes32 internal data;
    mapping(uint256 => uint256) internal dataMap;
    function get() public view returns (uint256[]) {
        uint256[] memory result;
        for (uint256 i = 0; i < size; i++) {
            result.push(i);
        }
        return result;
    }
    function set(uint256 _offset, uint256 _v) internal {
        uint offset = size - _offset;
        data[offset] = _v;
        dataMap[offset] = _v;
    }
    receive() external {
        uint256[] memory result = get();
        uint256 i;
        for (i = 0; i < result.length; i++) {
            dataMap[i] = result[i];
            data[i] = result[i];
        }
    }
    fallback() external {
        uint256[] memory result;
        result[0] = 1;
        dataMap[result.length] = 2;
        data[result.length] = 3;
        result = new uint256[](1);
        result[0] = 4;
        set(1, 42);
    }
}
