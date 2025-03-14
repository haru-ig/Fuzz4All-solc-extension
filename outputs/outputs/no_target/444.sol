pragma solidity ^0.8.0;

contract MyContract {
    Semantic myState;


    function MyContract() {
        myState = Semantic(true, false);
    }



    function getA() public view returns (address) {
        return address(myState);
    }
}
