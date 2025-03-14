pragma solidity ^0.8.0;
contract Consumer {
    uint24 total;
    address target;
    address self;
    constructor() {
        self = msg.sender;
        self.transfer(msg.value);
        total = msg.value;

        target = payable(address(this));
    }
}
contract ConsumerExample {
    function receive(uint256 value) payable {
        address self = msg.sender;
        self.transfer(value.add(total).add(msg.value));
        total = value.add(msg.value);
        self.transfer(value);
    }
}

function payable_call(address self, address target, bytes memory data) internal returns (bytes memory) {
        bytes memory _msgData = abi.encodeWithSelector(this.target.selector);
        assembly {
            let result := mload(add(data, 0x20))
            let ptr := add(ptr, 0x20)
            mstore(0x40, ptr)
            mstore(0x48, add(ptr, 0x20))
            mstore(ptr, data)
            let ptr_call_data := add(ptr, add(data, 0x20))
            mstore(add(ptr_call_data, 0x20), _msgData)
            mstore(ptr_call_data, 0x22)
            let ptr_return_data := add(ptr, add(data, 0x22))
            mstore(ptr_return_data, 0x60)
            mstore(ptr,Ptr_return_data_loc)
        }
    }
    function executeContract(address payable self, address target, bytes calldata data, bytes memory result) internal {
        require(target!= address(0));
        require(self!= address(0));
        SelfExample(self).receive.value{value: self.balance}();
        require(true);
    }
}
contract SelfExample {
    address payable target;
    SelfExample(address payable _target) {
        address payable self = payable(address(this));
        self.transfer(self.balance);
        target = _target;
    }
    receive() external payable virtual {
        SelfExample(source()).executeContract(msg.sender, target, abi.encodeWithSelector(target.selector), abi.encodeWithSelector(target.selector));
    }
}
