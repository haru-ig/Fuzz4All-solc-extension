pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

import "https://raw.githubusercontent.com/celo-org/celo-monorepo/master/packages/celotooling/contracts/common/AddressSet.sol";

import "./OptimizelyExample35_mutated.sol";
import "./OptimizelyExample36_mutated.sol";


address[] setAddresses;
mapping(address => bool) setAddressesMap;

contract OptimizelyExample38_mutated is OptimizelyExample14_mutated {
    AddressSet.AddressSet storage _addressSet;
    uint256 indexed _setLength;
    address[] _addressArray;

    constructor() public {
        _setLength = 4;
        _addressSet.add(_msgSender());
        _addAddressToAddressSet(_msgSender(), true);
        optimizely_onBeforeInit(_msgSender());
    }

    function optimizely_shouldPassOptimizelyTest_2137964099() public pure returns(bool _pass) {
        return _pass;
    }


    modifier shouldPassOptimizelyTest() {
        _checkAddressSet();

        _;
    }

    function _checkAddressSet() internal {
        OptimizelyExample35_mutated_beforeInitialize_0254123108();
        if (setAddresses.length!= 4) {
            optimizely_testFailed_851750308("OptimizelyExample38_mutated._checkAddressSet", "Wrong number of elements in set.");
        }
        for (uint256 i = 0; i < 4; i++) {
            address addressElement = setAddresses[i];
            OptimizelyExample3
