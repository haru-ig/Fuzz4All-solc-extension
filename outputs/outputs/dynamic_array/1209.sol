pragma solidity ^0.8.0;
contract OverwrittenSemanticIndependence_2 {
    uint8[] public accounts;
    function changeAccounts(uint newSize) {
        accounts.length = newSize;
    }
}

*/
