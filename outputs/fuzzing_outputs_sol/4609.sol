pragma solidity ^0.8.0;
contract ContractWithMutatedFallback {

    receiving() external payable { }

    function setFallback() public {
        receiving = payable { };
    }

    function shouldBeTrue() public {
        assert(receiving == payable { });
    }
}
