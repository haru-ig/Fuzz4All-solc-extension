pragma solidity ^0.8.0;
contract Array{
    uint256 public number;
  constructor(uint256 _n) public{
        number=_n;
    }
    function get_sum() returns(uint256){
        return(number+11);
    }
    function get_max() constant returns(uint256){
        return(number+10);
    }
    function get_min() constant returns(uint256){
        return(number-10);
    }
}
