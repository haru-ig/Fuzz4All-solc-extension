pragma solidity ^0.8.0;
contract Y {
    event myEvent(uint x);
    function myFunction(uint y) external {
        myEvent(y);
    }
}
