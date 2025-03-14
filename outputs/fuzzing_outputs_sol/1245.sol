pragma solidity ^0.8.0;
contract ModifierEquivalenceMutated {
        struct Extra { uint w; }
        Extra internal extra;
        function receiveExtra() public {}
        function run() public {
                uint extraValue = extra.w + 1;
        }
}
