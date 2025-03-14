pragma solidity ^0.8.0;
contract LotteryWithArrayAccess {
function getValueByAddress(uint i) public view returns(uint){
    return getArrayAddresses()[1][i].Z;
}
}
