pragma solidity ^0.8.0;
address Owner {
    receive() external payable {}
    function sendEmergingTokens(address _token, uint _amt) external {
        _token.transfer(_amt);
    }
}
contract Mutated5{
    address addr1;
    uint[] b_arr;
    uint[] c_arr;
    uint[] d;
    Owner private owner;
    function mutated1(uint _a) public {
        c_arr = new uint[](1);
        c_arr[0] = _a;
        addr1 = _a;
        owner.sendEmergingTokens(addr1, 10 ether);
    }
    function mutated4(uint[] memory _b) public {
        b_arr = _b;
        d = new uint[](_b.length);
        for (uint i=0; i<b_arr.length; i++) {
          d[i] = b_arr[i];
        }
    }
    function mutated5(uint[] memory _b) public {
        b_arr = _b;
        d = new uint[](_b.length);
        for (uint i=0; i<b
