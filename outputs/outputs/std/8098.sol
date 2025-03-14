pragma solidity ^0.8.0;
contract Array_view_with_new{
    function get32(uint256 _a) public view returns (uint256){
       _a = (_a + 8);
        return _a;
    }
}
