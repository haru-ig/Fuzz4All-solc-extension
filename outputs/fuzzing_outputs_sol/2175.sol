pragma solidity ^0.8.0;
contract Caller {

    Mutater334_1 public mutater;
    constructor(Mutater334_1 _mutater) {
        mutater = _mutater;
    }
    void call_fallback(address payable _mutater) payable {
        mutater = Mutater334_1(_mutater);
    }
}
