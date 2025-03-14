pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract ContractExample3 {
    function set( ) {
        uint[] memory array = [10, 25, 5];
        setMultiple(array);
    }
    function setMultiple(uint[] memory array) public {
        uint256 v;
        A memory a;
        B memory b;
        a.f1 = array[3];
        b.f1 = array[2];
        a.f1 = 10;
        a.f1 = 10;
        b.f1 = 10;
        if(array[0] > a.f1) {
            a.f1 = 10;
        }
    }
    function get( ) public view returns(uint[] memory) {
        return [a.f1, b.f1];
    }
}<issue_closed>
