pragma solidity ^0.8.0;
contract Test17_semanticsSub{
        bool public a;
        uint8[5] p;
        function f() public returns(uint256) {
            p[0] = -1;
            uint x;
            if (a) {
                x = p[0];
            }
            return x;
        }
    }

pragma version ^0.8.11;
pragma experimental ABIEncoderV2;
contract Test109_semantics{

        address payable _address543 = payable(0xBa1E802A122B6f2eD94549098092b3CaA20256E3);

        address payable _address5431
        receive() external payable{
        address5431 = payable(0xb30713b8002c1b622517784d396c6f665a775416);
   }
  	function f() public returns(uint256) {
        uint x, y, z, w;
        x = 4 + 0;
        y = 1 & 0;
        z = x * 0;
        w = x * 1;
        _address5431._;
        return 4 + 1 - 4;
    }

}
