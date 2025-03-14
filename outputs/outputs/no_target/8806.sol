pragma solidity ^0.8.0;

contract UpgradableNonEquivalentABIv08SemanticsAreNotEquivilentMutated {
    uint constant public _Amount64  = 14000;
    uint constant public _Value2 = 15000;
    event Mint (uint amount_, uint value_);
    function _mintA () internal {
        emit Mint(_Amount64, _Value2);
    }
    function mintA (bool x) internal virtual {
        if (true) {
            return;
        }
        _mintA();
    }
    function mintA () public {
        emit Mint(_Amount64, _Value2);
    }
}
contract InvertedUpgradableNonEquivalentABIv08SemanticsAreNotEquivilentMutated {
    uint constant public _Amount64  = 14000;
    uint constant public _Value2 = 15000;
    event Mint (uint amount_, uint value_);
    function _mintB () internal virtual {
        _mintA();
    }
    function _mintA () internal {
        emit Mint(_Amount64, _Value2);
    }
    function mintC (bool x) public {
        if (true) {
            return;
        }
        emit Mint(_Amount64, _Value2);
    }
    function mintB () public {
        emit Mint(_Amount64, _Value2);
    }
}

contract Solidity17RevertSemanticsAreNotEquivilentMutated {
    uint constant public _Amount64  = 14000;
    uint constant public _Value2 = 15000;
    event Mint (uint amount_, uint value_);
    function mintB () public {
        emit Mint(_Amount64, _Value2);
        if (0) {
            revert();
        }
    }
}
