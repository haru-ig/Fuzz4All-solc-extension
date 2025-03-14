pragma solidity ^0.8.0;
contract ContractWithFallbackModifier2_12 {
    function fallback() external payable {}
}


contract ContractWithFallbackModifierNoReceiver {
    function fallback() external {
        msg.sender.sendValue(address(this).balance);
    }
}

contract ContractWithFallbackCallNonPayable {
    address payable public recipient;
    function payableFallback() external payable {
        recipient.sendValue(msg.value);
    }
    function fallback() external {}
}

































contract CallerWithNoFallback {
    address payable public recipient;

    function fallback() external payable {
        recipient.sendValue(msg.value);
    }


    function doNothing() public returns (uint) {
        return 0;
    }
}

contract ContractWithFallbackForFunction {
    function contractWithFallbackModifier1() public {
        ContractWithFallbackModifier2_2 contractWithFallbackModifier2;
        contractWithFallbackModifier2.fallback();
    }
}
contract ContractWithFallbackForFunctionNoPayable {
    function contractWithFallbackModifier1() public {
        ContractWithFallbackModifierNoReceiver contractWithFallbackModifier;
        contractWithFallbackModifier.fallback();
    }
}
contract ContractWithFallbackCall {
    address payable public recipient;

    function valueWithFallback() public {
        address payable myContractAddr;
        address payable externalContractAddress = myContractAddr.call(new bytes(0));
    }

    function valueWithoutFallback() public {
        address
