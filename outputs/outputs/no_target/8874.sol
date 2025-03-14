pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated9 {
    address zeroAddress = 0x000000000000000000000000000000000;
    constructor() payable public {
        while (true)
        {

        }
    }
    function test () public returns (address) {
        uint _value90 = 1;
        uint _Value91;
        _Value91 = 0;
        uint _result;
        uint _result2;
        assembly {
            _result := div(_value90, _Value91)
            switch returndatasize
            case 0 {
                returndatacopy(0, 0, returndatasize)
            }
            default {
                revert(0, 0)
            }
        }
        return _result;
    }
}
