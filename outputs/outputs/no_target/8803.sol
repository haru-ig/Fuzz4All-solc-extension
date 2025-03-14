pragma solidity ^0.8.0;
contract EquivalentABIv08SemanticsAreEqivilent {
    uint constant public _Amount64 = 1500;
    uint constant public _Value2 = 1400;
    event Mint (uint amount_, uint value_);
    function mintA () public {
        emit Mint(_Amount64, _Value2);
    }
}

pragma solidity ^0.8.0;
contract NonEquivalentABIv08SemanticsAreEquivilent {
    uint constant public _Amount64 = 1400;
    uint constant public _Value2 = 1500;
    event Mint (uint amount_, uint value_);
    function mintA () public {
        Mint(_Amount64, _Value2);
    }
    function test2 () public nonpayable {}
    function test3 () public nonpayable {}
    function test4 () public nonpayable {}
    function test5 () public nonpayable {}
}
