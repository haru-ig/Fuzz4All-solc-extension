pragma solidity ^0.8.0;
contract ModifierEquivalenceChangedModifier {
        function change() public modifier modifierEquivalence {
                return modifier(modifierEquivalence);
        }
        function noChange(uint _i) public {}
}
