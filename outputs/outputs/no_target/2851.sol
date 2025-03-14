pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract newStorage {
    uint48 b;
    function set(uint48 _value) public {
        b = _value;
    }
    function get() public view returns (uint48) {
        return b;
    }
}
contract oldCode {
    address payable c;
    function set(address payable _value) public {
        c = _value;
    }
    function get() public view returns (address payable) {
        return c;
    }
}

pragma solidity ^0.5.0;
contract Code {
    function set() public payable {
        (bool success, ) = payable(this).call{value: msg.value}(abi.encodeWithSignature("transfer(address, uint)"));
        require(success, "set address was not successful");
    }
}

pragma solidity ^0.5.0;
contract AddressArray {
    function set(address[] memory x) public pure {
    }
}
contract Code {
    function set() public payable {
        return( (this)[0]);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract AddressArray {
    bool[] public array;
    function getArray() public view returns (bool[] memory, uint) {
        (bool[] memory arr, uint arr_len) = (array, array.length);
        return (arr, arr_len);
    }
    function setArray(bool[] memory a) public {
        array = a;
    }
}
contract Code {
    function set() public payable {
        (bool success, ) = AddressArray.addressArray(this).set(abi.encodeWithSignature("new(uint)"));
        require(success, "set address was not successful");
    }
}
contract Bogus {
	uint24 i;
    function set(uint24 _value) public {
        i = _value;
    }
    function get(uint24 _value) public {
        (, ) = (i, _value);
    }
}
contract Code {
    function set() public payable {
        Bogus bogus;
        (bool success, ) = (bogus, "get bogus's boolean failed").get();
        require(success, "get bogus's boolean failed
