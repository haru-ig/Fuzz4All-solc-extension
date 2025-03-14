pragma solidity ^0.8.0;
contract Test_No_0005 {
    function value() public view returns(bool, uint) {
        return true, 123;
    }
}

pragma solidity ^0.8.0;
contract Test_No_0006 {
    function value(bytes memory value) public pure returns(bool) {
        bytes memory b = msg.data;
        require(b.length >= 11, "Data length must be greater then or equal 11.");
        require(value == "Hello There!", "Check that the value passed is correct.");
        return true;
    }
}
