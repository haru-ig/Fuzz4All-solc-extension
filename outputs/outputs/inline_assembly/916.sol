pragma solidity ^0.8.0;
contract Incrementer {
    constructor() {}
    function increment_internal() internal pure returns (uint) {
        return 1;
    }
    function decrement_internal() internal pure returns (uint) {
        return 0;
    }

    function increment_external() public pure returns (uint){
        return 1;
    }

    function decrement_external() public pure returns (uint) {
        return 0;
    }
}


contract Incrementer{
    uint internal counter;
    uint externalPublicCounter ;
    function increment() public {
        counter++;
    }
    function incrementBy(uint by) public {
        counter+=by;
    }
    function decrement() public {
        counter--;
    }
    function decrementBy(uint by) public {
        counter-=by;
    }
    function publicCounter() public view returns(uint publicReturn) {
        return counter;
    }
    function internalCounter() public view returns (uint internalReturn) {
        return counter;
    }



    function externalValue() public view returns(uint publicValue) {
        return incrementExternal();
    }
    function privateValue() private view returns (uint internalValue) {
        return incrementInternal();
    }
    function internalValue() external view returns (uint internalValue) {
        return incrementInternal();
    }
    function externalGetInternalValue() public view returns (uint internalValue) {
        return incrementExternal();
    }
    function internalGetPublicValue() public view returns (uint internalValue) {
        return incrementInternal();
    }
    function publicSetInternalValue(uint by) public returns (uint internalValueToReturn) {
        internalValueToReturn= internalGetPublicValue()+ by;
    }

    function getInternalValueFromExternal() external view returns (uint internalReturn) {
        return externalGetInternalValue();
    }

    function setInternalValueAsPublic(uint by) public returns (uint internalToReturn) {
        internalToReturn= internalCounter();
        internalCounter+ by;
    }

    function setInternalValueAsPublicByZero(uint by) public returns (uint internalToReturn) {
        internalToReturn= internalCounter();
        internalCounter- by;
    }

    function decrementInternalValueByZero() public returns ( uint internalValueToReturn) {
        internalValueToReturn=internalGetPublicValue();
    }

    function publicIncrementExternalValue(uint internalValueIncrementedBy) public returns ( uint internalValueToReturn ) {
        internalValueToReturn= internalGetPublicValue() + internalValueIncrementedBy;
    }
    function publicIncrementExternalValueBy(uint internalValueIncrementedBy) public  returns ( uint internalToReturn ) {
        internalToReturn= internalGetPublicValue() + incrementExternal();
