pragma solidity ^0.8.0;

contract IAddressable {

    function store(uint256 value) external payable;
}

contract MemoizedAddressable is IAddressable {
    address internal _address;
    bytes32 internal constant _CODE_HASH = keccak256("memoize(address)");
    uint32 internal constant _VERSION = 1;
    bytes internal storedValue;
    uint internal lastStoreUsed;
    function store(uint256 value) public payable {
        bytes memory code = abi.encodePacked(uint8(_VERSION), _CODE_HASH, _address);
        uint256 gas = gasleft();
        (bytes memory ret, ) = address(this).call{value: value}(code);
        if (!ret.isEmpty() && ret[0] == '0') {
            storedValue = ret;
            lastStoreUsed = gas;
            payable(_address).transfer(lastStoreUsed);
        } else {
            storedValue = memoryCopy(ret, ret.length);
            lastStoreUsed = gas;
        }
    }
    bytes memory memoryCopy(bytes memory source, uint256 size) public pure returns (bytes memory) {
        return abi.encodePacked(source, bytes(uint32(size)));
    }
    function retrieveState() public view returns (address, uint, uint) {
        return (_address, lastStoreUsed, gasused());
    }
    function retrieveCodeHash() public view returns (bytes32) {
        return _CODE_HASH;
    }
}



pragma solidity ^0.8.0;

import "./IAddressable.sol";

contract Storage {
    IAddressable internal _addressable = IAddressable(address(0));
    constructor() {
        _addressable.store(1);
    }
}
