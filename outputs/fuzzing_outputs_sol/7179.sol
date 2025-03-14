pragma solidity ^0.8.0;
interface IExample2 {
    function test() external returns(bool);
}
contract Example2 {
    bytes32 constant ETHER_CHECK = keccak256("Ether");
    function setCheckFor() external {
        while(true) {

            if(msg.value < 1)
                break;

            else if(msg.value == 1)
                throw 4;

        }
    }
}
