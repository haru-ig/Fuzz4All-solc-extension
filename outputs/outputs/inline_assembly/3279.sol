pragma solidity ^0.8.0;
contract Mutate3_1_2_3 {
    uint public _contractAmount;
    address public _address;
    uint[] public _array;
    uint public _amount;
    function CheckAmount() public view returns (uint) {
        return _amount;
    }

    function ChangeArray(uint arr) public {
        address a;
        assembly {
            a := _address
            mstore(add(a, 0x60000000), mload(arr))
        }
    }

    constructor(uint amt3) {
        _address = msg.sender;
        _amount = amt3;
    }
 }
