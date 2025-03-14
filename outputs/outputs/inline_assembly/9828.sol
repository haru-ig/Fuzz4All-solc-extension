pragma solidity ^0.8.0;
contract SemanticsDifereceXulContract {
    constructor () {
    }
    function b() public {
        c();
    }
    function c() public {
        if (true)
            if (true)
                c();
    }
}
