pragma solidity ^0.8.0;
contract MutatedSemanticIndependence {
    function call(uint[5] memory accounts) payable {
        accounts = accounts;
    }
}
