pragma solidity ^0.8.0;
contract OldMutated5c {
    uint8 private _x;
}


pragma solidity ^0.8.0;
contract OldFixedMod2C {
    function Fixed() internal {
        return Fixed(1);
    }
    modifier onlyFixed() {
        return Fixed0x8E5E9D61365848DBDD4FBC50EB9A3299B1D2C32F16B202ECFD5D505BFEB3DC70());
    }
}

pragma solidity ^0.8.0;
contract OldMutatedFixedMod {
    function Fixed() internal pure returns (uint8 _x) {
        return 1;
    }
    function OnlyFixed() internal {
        uint8 calldata s = Fixed();
        _;
    }
}

pragma solidity ^0.8.0;
contract OldMutatedInline {
    uint8 internal static _a=1;
    function f() public {
        uint8 p;

        (p) = 1;
    }
    function OnlyF() public {
        uint8 p;

        (p) = _a;
        _;
    }
}
contract OldMutatedModif {
    function ModifOnly() internal {
        uint8 i;
        i += 1;
        i += 1;
        i += 1;
        i += 1;
    }
}

/*
