pragma solidity ^0.8.0;
contract simplefallback is Owned {

    function fallback() public pure {
        require(false);
    }

    function simplefallback() {}


    function receive() public pure {
        require(false);
    }

    function simplereceive() {}


    function receive2() public pure {
        require(false);
    }
    function nonpayablereceive2() public pure {}
}
