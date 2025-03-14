pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentSolidity57Mutated_63_solidity7_8 {
    event mChanged(bytes oldData, bytes newData);
    bytes[5] public static m;
}


address admin = msg.sender;
function () public payable {
uint256 balance_before = address(this).balance;
uint256 balance_after = balance_before;
for (uint256 i = 0; i < balance_before; i++) {
    (bool success, bytes memory calldata ) = address(admin).call{value: i()}("");

    if (success) { balance_after++; }
    if (i < balance_after) { revert('Should not succeed'); }
}
emit mChanged(balance_before.toString(),
balance_after.toString());
}
