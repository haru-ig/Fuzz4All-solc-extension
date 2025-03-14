pragma solidity ^0.8.0;
contract Caller{
    uint[] arr;
    uint[] _temp = new uint[](10);
    receive () external payable {
        uint _amount;
        assembly {
            _amount := mload(add(calldataload(0), 0x20))
        }
        arr.push(_amount);
        emit SomeEvent(_amount);
    }
}
