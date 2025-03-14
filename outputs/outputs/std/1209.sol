pragma solidity ^0.8.0;
contract B6 {
   function check(address _addr) public view returns (uint256) {
      uint256 _count = 0;
      for (uint256 i = 0; i < _addr.length; ++i) {
         _count = uint256(
            uint8(address(uint160(uint256(_addr[10+i])))) +
            uint256(address(uint160(uint256(_addr[20+i]))))
        );
      }
      return _count + _addr.length;
   }
}
