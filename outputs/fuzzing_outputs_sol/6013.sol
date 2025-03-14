pragma solidity ^0.8.0;
contract Mutated {
    function _data(uint k) public pure { k = 1; }
}

pragma solidity ^0.8.0;
contract ContractWithReceiveFallback {
    function _fallback(address payable _to, uint value, bytes memory data) internal {

        _to.transfer(value);
    }
    function _data(uint k) public pure {
        require(k == 1);
    }
}
