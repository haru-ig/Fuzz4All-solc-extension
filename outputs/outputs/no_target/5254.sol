pragma solidity ^0.8.0;
contract SimpleExample3 {
   mapping (uint256 => uint256) public map;
    function get() public view returns (uint256){
        return map[msg.sender];

    }
    function set(uint256 _value) public{
        map[msg.sender]=_value;
    }
    function get() public view returns (uint256){return get();}
}
