pragma solidity ^0.8.0;
interface IExample2{
    function setCheckFor(address c) external;
    function isValid() external view returns(bool);
    function getCheckFor() external view returns (bytes32);
}
contract Example2 is IExample2{

    mapping(address => bytes32) public checkFor;
    mapping(bytes32 => address) public checkFor2;
}
contract Caller{



    function sendEther(uint value) public {
        addr.transfer(value);
        addr.transfer(42);
        addr.transfer(uint(uint(0) - 17));
        addr.transfer(uint(-16));
        addr.transfer(0xDEADBEEF00000000000000000000000000000000000000000000000000000);
        addr.transfer(uint(-32));
    }



    function sendEtherAndReceive(uint value) public {
        addr.call.value(value)("");
        addr.call.value(42)("");
        addr.call.value(uint(uint(0) - 17))("")("");
        addr.call.value(uint(-16))("");
        addr.call.value(0xDEADBEEF00000000000000000000000000000000000000000000000000000000)("");
        addr.call.value(uint(-32))("");
    }
}
