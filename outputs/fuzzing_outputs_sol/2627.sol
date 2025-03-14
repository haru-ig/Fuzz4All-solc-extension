pragma solidity ^0.8.0;
contract myContract {
    bytes32 myDataField;
    constructor() {
        myDataField = "this is a test";
    }
    function getData() public view returns(bytes32) {
        return myDataField;
    }
}

pragma solidity ^0.8.0;
contract myContract {
    bytes32 myDataField;
    constructor() {
        myDataField = "this is a test";
    }

    receive() external payable {


        msg.data;
    }
    function getData() public view returns(bytes32) {
        return myDataField;
    }
}


pragma solidity ^0.8.0;
contract myContract {
    bytes32 public myDataField;
    constructor() {
        myDataField = "this is a test";
    }
    receive() external pure {


        msg.data;
    }
    function getData() public view returns(bytes32) {
        return myDataField;
    }
}


pragma solidity ^0.8.0;
contract myContract {
    bytes32 public myDataField;
    constructor() {
        myDataField = "this is a test";
    }
    receive() pure external {


        msg.data;
    }
    function getData()
