pragma solidity ^0.8.0;
contract SemanticsEquivalence
{
    function semanticEquivalence() public pure { revert(); }
    enum State { S1, S2 }
    struct StateData
    {
        State[] data;
    }
    contract Sema{
        address owner;
        StateData internal data;
    }
    modifier ifEqualData(StateData memory _data) { require(stateEq(_data)); _; }
    modifier ifNotEqualData(StateData memory _data) { require(stateNotEq(_data)); _; }
    modifier ifMatchAnyData(StateData memory _data) { require(anyOf(_data)); _; }
    function stateNotEq(StateData memory _data) internal pure returns (bool isNotEq) {
        if(stateEq(_data)) isNotEq = true;
    }
    function stateEq(StateData memory _data) internal pure returns (bool isEq) {
        if(dataEq(_data)) isEq = true;
    }
    function anyOf(StateData memory _data) internal pure returns (bool isAll) {
        if(!isEmpty(_data)) isAll = true;
    }
    function isEmpty(StateData memory _data) internal pure returns (bool isEmpty) {
        if(length(_data.data) > 0) isEmpty = true;
    }
    function length(StateData memory _data) internal view returns (uint256 length) {
        length = _data.data.length;
    }
    function dataEq(StateData memory a) internal view returns (bool isEq) {
        if(length(a.data) == 0) isEq = true;
        for(uint256 i = 0; i < length(a.data); i++) {
            if(a.data[i]!= i) isEq = false;
        }
    }
}
