pragma solidity ^0.8.0;
library Test {
    function value() public view returns (bool) {
        assert(value());
        return true;
    }
    modifier nonEmpty { require(value()); _; }
}
