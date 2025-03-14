pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Emulator20 {
    uint x; uint y; string z;
    function init() public {
        z = 'Init';
        x = add(1,3);
        y = add(2,4);

        write();
    }
    function add(uint x,uint y) public pure returns(uint) {return x+y; }
    function write() public {}
    function changeValue(uint x_,uint y_, string memory z_) public {
        x = add(x_,y_);
        z = z_;
    }
    function check() public view returns(string memory z_) { z_ = 'change value  : '+(uint2str(x))+'_'+(uint2str(y))+' -> '+z_; }
    function toString() public view returns(uint256) { return x+y; }
    function uint2str(uint u) public pure returns (string memory) {
      if (u == 0) {
        return "0";
      } else return (uint2str(u/10) + uint2str(u%10));
    }
    function getZero() public pure returns (uint) { return 0; }
}
