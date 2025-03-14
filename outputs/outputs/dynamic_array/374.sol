pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Ga2 {

    bytes5 array = 'foo';
    function g() public returns(uint256){
        uint256 x = 3;

        uint256[] memory _b = new uint256[](x);
        array[0] = 'b';
        return x;
    }

    function f() public pure returns(uint256[] memory) {
        return _b;
    }
}
