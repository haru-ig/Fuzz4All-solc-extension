pragma solidity ^0.8.0;
import "./myContract.sol";
contract myContract {
    bytes32 public myDataField;
    constructor() {
        myDataField = "this is a test";
    }

    fallback() external payable {


        myDataField = msg.data;
    }
}

contract myContract {
    function getData() public view returns(bytes32) {
        return myDataField;
    }
    function getData2() public view returns(bytes32) {
        return mySecondDataField;
    }
    fallback() external payable {
        myDataField = msg.data;
    }
    receive() external payable {}
}
