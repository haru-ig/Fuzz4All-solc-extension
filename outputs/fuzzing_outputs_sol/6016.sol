pragma solidity ^0.8.0;
contract Mutated {
    function _data(uint k) public pure { k = 1; }
}
contract ContractWithReceiveFallback {
    function _fallback(address payable _to, uint value, bytes memory data) internal
    {
        Mutated c = Mutated(address(this));
        Emitter(c._data.value(value) {
            c._data(1);
        });
    }
    function _data(uint k) public pure {
        require(k == 1);
    }
}
contract ContractWithReceiveFallback {
    function _fallback(address payable _to, uint value, bytes memory data) internal {
    }
    function _data(uint k) public {
        require(k == 1);
    }
}
