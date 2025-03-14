pragma solidity ^0.8.0;
contract TestFallback implements IFunctionWithFallbackMutated {
    fallback () external payable {


            payable (msg.sender).transfer ( msg.value );

    }
}
