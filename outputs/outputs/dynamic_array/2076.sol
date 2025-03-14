pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_5{
    string[] stringValue;
    function set(string[] memory newString) public  returns(uint256) {
        stringValue = new StringArray[1]{new StringArray('test 2', 'another test')} ;
        uint res = set(stringValue, 0, StringArray(false, ''))[0];
        return res;
    }
    struct StringArray{ bool b; string s;
        StringArray(bool b_, string memory s_)public{b = b_; s = s_;}
    }
}
