pragma solidity ^0.8.0;

contract Example is Example1, Example2 {

    function data() public pure returns(bytes32){
        return Example1.getCheckFor();
    }

}

contract Example3 is Example, Example1, Example2 {

}
