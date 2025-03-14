pragma solidity ^0.8.0;
address x;
constructor(address _x) payable public {
    x = _x;
    x.call.value(1 ether)(new Mutated2c());
    assert(x.call.value(1 wei)(new Mutated2c()));
    assert(x.call.value(10 ether)(new Mutated2c()));
    assert(!x.call.value(1 wei2)(new Mutated2c()));
    assert(!x.call.value(10 ether2)(new Mutated2c()));
}
