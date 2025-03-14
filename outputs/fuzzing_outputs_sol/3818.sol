pragma solidity ^0.8.0;
contract Example20 {
    event Log(address _from, address _to);
    function f(address example19_) {
        Example19 example19 = Example19(example19_);
        if (example19_.isContract()) {
           address f = example19_.fallback();
        }
    }
    modifier onlyFallback() {
        require (isFallback(), "Only fallback can call this fallback function!");
        _;
    }
    function isFallback() public pure returns(bool) {
        return false;
    }
    function example19() public pure virtual returns(bool) {
        return false;
    }
}
