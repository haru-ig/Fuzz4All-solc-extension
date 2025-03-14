pragma solidity ^0.8.0;
contract C {
    function c() public { revert(0xabcdef89); }
}

pragma solidity ^0.8.0;
contract D {
    function d() public {
        uint x = 0xabcdef0;
        assembly {
            let y := 0xabcdef1
            let z := 0xbada

            z := y
          ...

            x := y
            x := z
        }
        require(x == 0xbada);
    }
}

pragma solidity ^0.8.0;
