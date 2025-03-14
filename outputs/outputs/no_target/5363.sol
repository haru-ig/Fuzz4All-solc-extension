pragma solidity ^0.8.0;
contract RevertWrap {
    uint256 value;
    bool modified = false;
    modifier old() {
        if(!modified) {
            revert(0x12345678);
        }
        _;
    }
    function noChange(uint256 _value) public returns (uint256) {
        value = _value;
        modified = true;
        return 5;
    }
    function change(uint256 _value) public returns (uint256) {
        modified = false;
        return 5;
    }
}
contract RevertWrapWrap {
    uint256 value;
    bool modified = false;
    modifier wrap() {
        int32 i = value;
        if(i!=4 ||!modified) {
            revert("Incorrect type argument");
        }
        modified = false;
        return 5;
    }
    function change(uint256 _value) public returns (uint256) {
        modified = false;
        return 5;
    }
}
