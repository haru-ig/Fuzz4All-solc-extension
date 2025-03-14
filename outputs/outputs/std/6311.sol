pragma solidity ^0.8.0;
import "./New.sol";
contract Modifications {
    New _module;
    constructor(uint256 _value) {
        _module = New(_value);
    }
    function getValue() public {
        uint256 x = 0;
        uint256 result = _module.getValue(x);

        address addr = address(_module);
        (bool success, ) = addr.call{value: 0}(abi.encodeWithSignature("getValue(uint256)"));
        if ((success == false) || (x!= result)) {
            revert();
        }
    }
}
