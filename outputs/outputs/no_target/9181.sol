pragma solidity ^0.8.0;
contract smarter_abi5   {
    function test5(address payable  _receiver, address payable  _receiver_) public {
        assert(_receiver_ == _receiver);
    }
    function test5(
        address payable  _receiver,
        address payable  _receiver_,
        bytes4  _value
    ) public {
        bytes memory data = abi.encodeWithSelector(test5.selector, _receiver,_receiver_);
        assembly { calldatacopy(0, add(data, 0), mload(data)) }
        return test5(_receiver_,"0x0",bytes4(keccak256(data)));
    }
    function test5(
        address payable  _receiver,
        address payable  _receiver_,
        bytes4  _value,
        bytes memory data
    ) public {

        (bool success, bytes memory result) = _receiver_.call{value:{callvalue:{staticcall:{contract,data}}}}(data);
        require(!success);
    }
}
