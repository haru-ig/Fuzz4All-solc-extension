pragma solidity ^0.8.0;
contract MutatedContract {
    uint public mutatedResult;
    uint constant minValue = 0;
    uint constant increment = 1;
    uint constant maxValue = 99;
    function useMutatedContract() public {
        MutatedContractV0 mutatedContract = new MutatedContractV0();

        uint initialValue = minValue;
        initialValue += increment;

        initialValue += increment;

        initialValue += increment;

        initialValue += increment;

        initialValue += increment;
        mutatedResult = initialValue;

        initialValue -= increment;

        initialValue -= increment;

        initialValue -= increment;

        initialValue -= increment;

        mutatedContract.useParentMutatedContract(initialValue);
    }
    function useParentMutatedContract(uint initialValue) public {
        MutatedContractV2 mutatedContract = new MutatedContractV2();

        mutatedContract.useMutatedContract(initialValue);
    }
    function useMutatedContract(uint initialValue) public {
        mutatedResult = initialValue;
        mutatedResult = minValue++;
        mutatedResult = minValue++;
        mutatedResult = minValue++;
        mutatedResult = minValue++;
    }
}



contract Test2 {











    uint testValue = 1111 + 1222 + 3333 + 4444 + 5555 + 6666 + 7777 + 8888 + 9999;

    using MutatedContract for MutatedContract;

    address public owner = msg.sender;

    address public immutable parentAddress = address(owner);

    function testMutatedContract() public{
        MutatedContract mutatedContract = new MutatedContract();
        MutatedContract.useMutatedContract(testValue);
        MutatedContract.useParentMutatedContract(6666);
    }

    function shouldBeTrue(bool x) internal view returns (bool) {
        if (x) {}
        if (!x) return false;
    }


    function isMutatedContractPaused() public view returns (bool) {
        if (msg.sender == parentAddress) return true;
    }
}
