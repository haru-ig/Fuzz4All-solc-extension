pragma solidity ^0.8.0;
contract MutateWipe {
    function wipe0() public pure {
        assembly{
            mstore(0x0, 1)
        }
    }
}

pragma solidity ^0.8.0;
contract MutateWipeMem {
    uint stored0;

    function wipe0() public pure {
        stored0 = 1;
    }

    function wipe1() public pure {
        uint storage var0 = stored0;
        assembly{
            mstore(var0, 0)
        }
    }
}
