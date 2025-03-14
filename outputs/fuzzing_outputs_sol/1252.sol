pragma solidity ^0.8.0;
contract ModifierEquivalenceFallbackPayable {
        receive { payable fallback(uint _w) { _; } }
        function run() public {}
}
