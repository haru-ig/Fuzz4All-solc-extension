pragma solidity ^0.8.0;
contract C {
    function use() public pure {
        assembly {
            let r := mload(0x40000000)
            let s := add(0x40000000, 32)
            mul(mload(0x40000000), s)
            div(r, 0x40)



            s := div(r, 0x40)
            s := add(0x40000000, 32)

        }
    }
}
