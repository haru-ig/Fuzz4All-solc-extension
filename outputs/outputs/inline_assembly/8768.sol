pragma solidity ^0.8.0;
contract Test {
    mapping(uint256 => bool) public value;
    function value() public view returns(bool) {
        bool test=true;
        for(uint256 i=0;test;++i){
            if(value[i]) {
                return false;
            }
        }
        return true;
    }

    modifier verify {
        if(!(bool(value[msg.sender]) == false)) {
            revert("msg.sender should not be false");
        }
        _;
    }


    /* modifier to restrict a particular user or multiple users from using a method
    function set(uint i) public onlyUser returns (bool) {
        value[0] == false;
        return false;
    }
}
