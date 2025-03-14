pragma solidity ^0.8.0;
contract Wrapper is IWrapper {
    address internal _wrap;
    function getWrapperDataSize() public view returns (uint memory) {
        uint data_data_size = abi.encodeRecursive(_wrap).length;
        uint wrap_data_size = 2 * sizeof(uint);
        uint result = data_data_size + wrap_data_size;
        require(result <= 32**256);
        return result;
    }
    function getWrapperData() public view returns (address memory) {
        bytes call return_data = abi.encode(_wrap);
        assembly {
         return_data := mload(add(return_data, 320))
        }
        require(return_data.length >= 2 * sizeof(uint));
        address wrapped = abi.decode(return_data, (address));
        require(wrapped!= address(0));
        return wrapped;
    }
    constructor (address _wrap_) {
        _wrap = _wrap_;
    }
}
