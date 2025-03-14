pragma solidity ^0.8.0;
contract Example17 {
    struct Data {
        uint256 y;
    }
    function example17() public pure {
        Data memory a = Data(2);
        dataY(a);
    }
    function dataY(Data memory a) public pure {}
}
