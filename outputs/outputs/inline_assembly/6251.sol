pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
import "../test/FixtureStore.sol";
import "../../contracts/MixedContactsExample10.sol";
contract C{
    function main(MixedContacts memory s) public pure{
        IContractStore storage store = FixtureStore.get_store(address(this));

        MixedContacts memory s2 = MixedContacts(s.x, 3 * 4);
        bool ok = MixedContactsExample10.main(s2);
        expect(ok, address(0));
    }
}
