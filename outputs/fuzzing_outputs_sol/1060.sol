pragma solidity ^0.8.0;
contract Caller {
    uint8[3] private data;
    function payable fallback() public payable {
        data[0] = 1;
        data[1] += 100;
        data[2] = 100 * 100 + 1;
    }
    function getter() public view returns(uint8) {
        return data[1];
    }
}
