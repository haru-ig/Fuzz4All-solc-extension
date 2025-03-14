pragma solidity ^0.8.0;
contract MutatedFallback {
    fallback (address) external payable {}
}
address payable f = EmptyFallback.fallback();
address payable m = MutatedFallback.fallback(address(110));
assert(f.balance!= m.balance);
