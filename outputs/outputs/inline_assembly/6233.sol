pragma solidity ^0.8.0;


contract MixedContactsExample3 {
    bytes private _returnData;
    bytes20[] memory _addresses;

    function main(address[] memory addresses_) public {
        _returnData = abi.encode(addresses_);
        returnData(address(this));
    }

    function returnData(address[] memory v) public {
        require(v.length == _addresses.length);

        for (uint256 i; i < v.length; i++) {
            _addresses[i] = address(uint160(v[i]));
        }

        _returnData = abi.encode(_addresses);
        require(keccak256(_returnData) == keccak256(abi.encodePacked(v)));
    }
}
