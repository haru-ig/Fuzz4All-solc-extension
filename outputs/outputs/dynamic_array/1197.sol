pragma solidity ^0.8.0;
contract MutatedSemanticIndependence {
    mapping(uint => uint) accounts;
}

pragma solidity ^0.8.0;
contract MutatedSemanticIndependence {
    mapping(uint => uint) accounts;
    function method_returning_method_returning_uint() -> uint {
        return method_returning_method_returning_method_returning_uint();
    }
    function method_returning_method_returning_method_returning_uint() -> uint {
        return method_returning_uint();
    }
    function method_returning_uint() -> uint {
        return accounts[msg.sender];
    }
}
