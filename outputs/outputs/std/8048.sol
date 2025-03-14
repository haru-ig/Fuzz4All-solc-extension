pragma solidity ^0.8.0;
contract Conversion{
    function str(uint256 _x) public pure returns(string memory _s){
        assembly{
            _s := add(mload(0x40),add(mload(0x3f),mul(div(mul(sub(mload(0x40),add(65,mul(add(0x20,_x)),256)),pow(256,sub(8,1)))),_x))))
        }
    }
}
