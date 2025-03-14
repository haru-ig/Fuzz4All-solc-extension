pragma solidity ^0.8.0;
contract MyContract {
    bool b3;
    constructor () {
        b3 = false;
    }
    function bar() notTrue view public {
        b3 = true;
    }
}
