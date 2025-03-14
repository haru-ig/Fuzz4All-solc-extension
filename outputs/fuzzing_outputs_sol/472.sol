pragma solidity ^0.8.0;
contract MutatedCallerMutated {
    function mut(address _addr, uint256 _index) payable external { _addr.mut(_index); }
}
