pragma solidity ^0.8.0;
contract Contract {
        receive() external payable {
               contract(contract_with_fallback());
        }
        fallback() external payable {}
        struct contract_with_fallback {
               address _fallback;
        }
}
contract Caller {
        address address_with_fallback;
        fallback() external payable {
               address_with_fallback.transfer(msg.value);
        }
        receive() external payable {}
}
