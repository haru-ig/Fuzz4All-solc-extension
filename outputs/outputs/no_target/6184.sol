pragma solidity ^0.8.0;
import "./MutatedContractV2.sol";
contract MutatedMutatedContractV2 {
    MutatedContractV2 _contract = MutatedContractV2(8);
    int public intResult = -200;
    int constant minValue = -10;


    bool mutatedContract = true;

    function() public pure {


        if (contract.address.value(1 ether)()) {




        }
    }


    function setMutatedContract() public {
        mutatedContract = false;
        contract.increment();
        setMutatedContract();
    }
    function setIntResult(int newIndex) public {
        intResult = newIndex;
        setIntResult(1);
        setIntResult(3);
    }

    function setIntResult(uint newIndex) public {
        bool mutated = contract.isZero();
        bool mutated2 = contract.minValue();
        bool mutated3 = contract.increment();

        bool mutated4 = contract.incrementMod();
        bool mutated5 = contract.decrementMod();
        bool mutated6 = contract.decrement();

        bool mutated7 = contract.decrementMod();
        int256 newInt = 35;

        uint64 newUInt = uint64(new Int(newInt));

        bool mutated8 = contract.increment(new Int(newInt));
        bool mutated9 = contract.decrement(new Int(newInt));

        MutatedMutatedContractV2 contract = new MutatedMutatedContractV2();
        contract.mutatedResult = uint128(newInt);
    }

    Int constant _int = Int(increment);

    function intResult() public view returns(int) {
        return intResult;
    }

    function contract() internal view returns(MutatedMutatedContractV2) {
        return _contract;
    }

    function contractCall() internal {
        intResult = _contract.increment();
    }
    function contractCall2() public returns(int) {
        return _contract.increment();
    }

    function contractCall3() public returns(int,int) {
        return (uint(_contract.increment()), uint(_contract.decrement()));
    }
    function contractCall4() public returns(bool) {
        return _contract.isZero();
    }
    function contractCall
