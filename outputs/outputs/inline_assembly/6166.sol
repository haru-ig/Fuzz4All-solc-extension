pragma solidity ^0.8.0;
contract MixedContractsExample {
    mapping (uint256 => MixedContracts) public _mappings;
    function main() public {
        _mappings[1] = MixedContracts(0x03, 0x04, 0x02, 0x020304, 0x040506, 0);
        emit x(_mappings[1].x);
    }

    event x(uint256 _value);
}
