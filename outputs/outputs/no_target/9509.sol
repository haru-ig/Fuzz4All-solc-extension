pragma solidity ^0.8.0;
interface Interface59 {
    function g() external pure returns (uint);
}
address private _addr0;
address _addr1;
address _addr2;
function g() public view returns (uint) {
    uint result;

    _addr0 = _addr1;
    _addr0 = _addr2;
    result = _addr0.send(9000 ether);
    return result;
}
