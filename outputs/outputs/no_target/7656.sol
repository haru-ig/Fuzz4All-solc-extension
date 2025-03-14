pragma solidity ^0.8.0;
library S {
    uint s;
    function modify() public pure {
        s += 1;
    }
}

pragma solidity ^0.8.0;
library S {
    event Log;
    bool public doNothing;
    modifier doNothing() {
        emit Log();
        _;
    }
    function doNothingMod() public doNothing {}
}

pragma solidity ^0.8.0;
library S {
    function doNothingMod() public doNothing {}
    function doNothing() public {}
}
