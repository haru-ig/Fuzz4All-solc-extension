pragma solidity ^0.8.0;
contract MyContracts {

    function sendValue(address payable who, uint value) public {
        who.transfer(value);
    }
    function executeCallReturn(address who, uint value) public {
        uint _value = value;
        (bool success, bytes memory returnData) = who.call{value:_value}("");
        assert(success);
        assembly {
            let _returndata := mload(add(_value, 0x20))
            _value := 0
            returndatacopy(0x0, add(_value, returnData), 32)
        }
    }
}
