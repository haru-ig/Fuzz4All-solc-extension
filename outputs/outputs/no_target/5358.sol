pragma solidity ^0.8.0;
contract RevertOld {
    uint256 value;
    bool modified = false;
    modifier old() {
        if(!modified) {
            revert("Not modified");
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

pragma solidity ^0.8.0;
contract RevertChange {
    uint x;
    uint y;
    bool modified = false;
    function checkInvariants(uint256 _x, uint256 _y) public returns (uint256) {
        if(x!=y-1 ||!modified) {
            revert("Not enough changes");
        }
        modified = false;
        return 2*_x + _y;
    }
}
