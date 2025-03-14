pragma solidity ^0.8.0;
contract Semantic3 {
    function balance3(uint256 _val) public pure returns(uint8, uint256) { return (0x00, _val); }
}






contract Semantic3 {
    function balance3(uint256 _val) public returns(uint8, uint256) {
        return (0x00, _val);
    }
}
