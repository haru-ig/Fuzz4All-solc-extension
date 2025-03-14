pragma solidity ^0.8.0;
contract Mutated {
    function get(uint160 l_, uint160 k_) public returns (uint160) {
        uint x = l_ ^ (k_ & 10) << 8;
        uint m = x % 100;
        uint n = x / 100;
        x = (n * 100) + m;
        return x;
    }
    function set(uint160 l_, uint160 v_) public {
        l_ = l_ ^ (v_ << 8);
    }
}

pragma solidity >=0.6.0 <0.9.0;
import "./Mutated.sol";
contract NewMutated is Mutated {
    constructor() Mutated("NewMutation", "NEW") { }
    function get(uint160 l_, uint160 k_) public override readonly returns (uint128) {
        return super.get(l_, k_);
    }
    function set(uint160 l_, uint160 v_) public override {
        super.set(l_, v_);
        emit Modify(l_, v_);
    }
    emit Modify(address addr, uint val);
    event Modify(uint128 indexed addr, uint val);
}
pragma solidity >=0.6.0 <0.9.0;
import "./Mutated.sol";
contract NewMutated2 is Mutated {
    event Modify(address addr, uint val);
    constructor() Mutated("NewMutation", "NEW") { }
    function get(uint8 k_, uint16 r_) public override readonly returns (uint256) {
        return super.get(k_, r_);
    }
    function set(uint8 k_, uint16 r_) public override {
        super.set(k_, r_);
        emit Modify(addr, r_);
    }
}
