pragma solidity ^0.8.0;
contract MyContract {
    function test2() public pure virtual {
        uint256 _result = 1;
        assembly {
             _result := mul(mload(0x40), 5)
        }
        myStorage = _result;
    }

    uint256 public myStorage;
}
