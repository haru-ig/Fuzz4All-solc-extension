pragma solidity ^0.8.0;
contract SemanticallyEquiv {
    bytes32 public semanticallyEquiv = 0;
}

pragma solidity ^0.8.0;
contract SemanticallyEquiv {

    struct SemanticallyEquiv2048Struct {
        uint216 internal test;
    }

    SemanticallyEquiv2048Struct public semanticallyEquiv2048;

    function semanticallyEquiv() public view {
        SemanticallyEquiv semanticallyEquiv = SemanticallyEquiv(semanticallyEquiv2048);
    }
}
