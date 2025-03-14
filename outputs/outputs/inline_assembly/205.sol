pragma solidity ^0.8.0;
contract E7H2
{
    uint public counter = 10;
    constructor(uint _x) public {
        counter = _x;
    }
    function set(uint _x) public returns (bool)
    {
        counter = _x;
        return true;
    }
    function get() public view returns (uint) {
        return counter;
    }
}
contract E7H3 is E7H1,E7H2
{
    uint public z =5;
    uint public p = 7;
    constructor(uint _x) public E7H1(_x)
    {


      emit logEvent(bytes1(keccak256(abi.encodePacked(keccak256(abi.encodePacked(counter,7))), keccak256(abi.encodePacked(counter + 7)))))
    }
    function set(uint _x) public returns (bool)
    {
        counter = _x;
        return true;
    }
    function get() public view returns (uint) {
        return counter;
    }
    function logEvent(bytes memory data) public {
        emit logEvent(data);
    }

}
