pragma solidity ^0.8.0;
contract ModifierEquivalenceExtended {
        function receiveExtra(uint _w) internal payable {}
        function run() public {}
}

contract SimpleFallback {
        constructor() { }
        bool public success = true;
        modifier successModifier() {
                require(success, "!success");
                _;

        }
        function runSuccess() public successModifier { success = false; }
        function fallback(uint _w) public { success = true; }
}
