pragma solidity ^0.8.0;
contract ContractWithFallback {
    fallback () private {
    }
}
contract Caller {
    address contractAddr;

    fallback() private {
    }


    }





    function setContractAddress(address addr) public {}
    function simpleCall() public payable {
        contractAddr.call{value: msg.value}(msg.data);
    }
}
