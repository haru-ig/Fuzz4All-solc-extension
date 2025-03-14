pragma solidity ^0.8.0;
interface IValueMutated {
    function example5() external payable;
    function valueFromCaller() external view returns (address);
}
contract Caller {


    modifier onlyFromTheCaller() {
        require(msg.sender == address(this), "Sender not allowed.");
        _;
    }



    modifier onlyFromDefault() {



        require(keccak256(abi.encodePacked("\x698cf47dff5935bdff0f87991949bf9f87a9d810a9608330a8c9fe00512501a")) == keccak256(abi.encodePacked(msg.data)), "Wrong data hash.");
        _;
    }
    function valueFromCaller() public view onlyFromTheCaller returns (address) {
        return valueFromCaller();
    }
    function example6() public payable onlyFromTheCaller onlyFromDefault {
        valueFromCaller = msg.sender;
    }
}
