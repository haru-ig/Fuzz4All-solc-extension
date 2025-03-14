pragma solidity ^0.8.0;
contract ModifierEquivalenceMutated {
        ModifierEquivalenceMutated internal _modifier;
        function payable receive() payable {
                require(_modifier.run());
                _modifier.extra.w++;
        }
        function run() public {
                uint extraValue = extra.w + 1;
        }
}
