pragma solidity ^0.8.0;

import "utils/SignedSafeMath.sol";

contract Caller {
    using SignedSafeMath for uint256;

    struct MessageInfo {
        uint8 from;
        uint8 to;
        uint256 gas;
        uint256 totalGas;
        uint256 valueEtherSent;
    }

    uint256 a;
    uint256 z;

    bytes memory message;
    MessageInfo memory messageInfo;

    constructor(uint256 a_) public {
        a = a_;
    }

    function setMessage(bytes memory _message) public {
        message = _message;
        messageInfo.gas = message.gas;
    }

    function accept(address to, uint256 inValue) public {
        messageInfo.to = to;
        messageInfo.valueEtherSent = inValue;
        if (to == address(0)) {
            a = inValue.sub(a).div(10 ether);
            z = 0;
            messageInfo.gas += a;
        } else {
            bytes memory _message = abi.encodePacked(a, 42);
            message = _message;
            messageInfo.gas += _message.gas;
            messageInfo.totalGas += messageInfo.gas;
            a = 0;
        }
    }

    function callFallback() public {
        callIfValidZ();
    }

    function callIfValidZ() public {
        uint256 result = uint256(a);
        uint256 _gasUsed = 0;
        if (result <= z) {
            _gasUsed = toUInt256(a).sub(toUInt256(z)).div(20 ether);
        }

        uint256 totalGasUse = messageInfo.totalGas.sub(_gasUsed);
        require(totalGasUse <= messageInfo.gas, "Contract failed sanity check.");
        uint256 contractValue = 0;
        uint256 _value = calculateAmount(_gasUsed, messageInfo.valueEtherSent, messageInfo.gas);

        if (_value <= 1 ether) {
            contractValue = _value;
        }

        address payable to_addr = address(safeCast(to_addr, 0));
        to_addr.call{value: contractValue}(abi.encodeWithSignature("accept(address,uint256)", to_addr, 42));
    }

    function calculateAmount(uint256 gasUsed, uint256 ethValue, uint256 totalGas) private pure returns(uint256) {
        if (totalGas == 0 && ethValue == 0) {
            return 0;
        }
        uint25
