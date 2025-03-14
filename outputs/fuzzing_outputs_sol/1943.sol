pragma solidity ^0.8.0;
contract MutateStorage {
    uint private _value;
    uint private _value1;
    uint private constant _increment = 1;
    constructor() {
        _value = uint((keccak256(abi.encodePacked("0x", block.difficulty))));
        _value1 = uint(_increment);
    }
    receive() external payable {
        _value += _value1;
    }
}

pragma solidity ^0.8.0;
contract MutateStorage2 {
    uint private _value;
    uint private _value1;
    address payable private _address;
    address private constant _address_oneAddress = 0xADB36FF01D10EC6352D343312AF59045161042AA;
    constructor() {
        _value = uint(keccak256(_address_oneAddress));
        _value1 = uint(_increment);
        _address = payable(_address_oneAddress);
    }
    receive() external payable {
        _value += _value1;
    }
}

pragma solidity ^0.8.0;
contract MutateStorage3 {
    uint private _value;
    uint private _value1;
    uint private constant _increment = 1;
    constructor() {
        _value = uint(keccak256(abi.encodePacked("0x", block.difficulty)));
        _value1 = uint(_increment);
    }
    receive() external payable {
        _value += _value1;
        revert();
    }
}

pragma solidity ^0.8.0;
contract MutateStorage4 {
    uint private _value;
    uint private _value1;
    address payable private _address;
    address private constant _address_oneAddress = 0xADB36FF01D10EC6352D343312AF59045161042AA;
    constructor() {
        _value = uint(_value_contract_address);
        _value1 = uint(_increment);
        _address = payable(_address_oneAddress);
    }
    receive() external payable {
        _value += _value1;
        revert();
    }
}
