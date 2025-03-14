pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract OptimizelyExample85 {

    OptimizelyExample84 public counter;


    modifier onlyExternal {
        (bool success, ) = msg.sender.call{ value: address(counter).balance }("");
        require(success, "External contract call failed");
        _;
    }

    function add5ToCounter() public onlyExternal {
        counter.increment();
    }

    function getCounter(int128 x) public view returns (int128) {
        return counter.getCounter(x + 5);
    }

    function setCounter(int128 newCounter) public {
        counter.setCounter(newCounter);
    }
}
