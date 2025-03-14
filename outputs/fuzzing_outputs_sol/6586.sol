pragma solidity ^0.8.0;
contract Caller {
    uint constant private val = 36;
    function get() public view returns(uint) {
        return val;
    }
    function set(uint _x) public {
        require(_x == val);
    }
}
pragma solidity ^0.8.0;
