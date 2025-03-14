pragma solidity ^0.8.0;
contract MappedAbiTest {

    IERC165 i;
    address _address;
    address[] memory _instances;
    mapping(address => mapping(address => bool)) private _supportedInterfaces;
    constructor() {}
    constructor(address _instance) {
        _address = _instance;
        _instances.push(_instance);
    }
    function _supportsInterface(bytes4 interfaceId) private view returns (bool) {
        return _supportedInterfaces[_address][interfaceId];
    }
    function _doTest(bytes4 interfaceId) private returns (bool, bool[], uint[]) {
        if (_supportedInterfaces[_address][interfaceId]) {

            uint[] memory sizes;
            return (_supportsInterface(interfaceId) &&
              !supportsInterface(interfaceId), sizes);
        } else {

            return (false, true);
        }
    }
    receive() external {
        (, bool[] memory supports, uint[] memory sizes) = _doTest(0xffffffff);
        _supportedInterfaces[_address][0xffffffff] = false;
        address[] memory _instancesAfterTest = i.supportsInterface(0xffffffff);
        assert(_instancesAfterTest.length == 0);
        assert(sizes.length == 0);
        assert(_supportsInterface(0xffffffff) == true);
    }
}
