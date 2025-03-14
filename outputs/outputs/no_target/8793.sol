pragma solidity ^0.8.0;
contract EquivalentABIv08SemanticsAreEquivilent {
    event Mint (uint256 amount_, uint256 value_);
    function mintB () public {
        uint _amount1 =  1400;
        uint _value2 =  1500;
        emit Mint(_amount1, _value2);
    }
}


pragma solidity ^0.8.0;

contract EquivalentABIv08SemanticsAreEquivilent {
    event Mint (uint256 amount_, uint256 value_);
    function mintC () public {
        uint _amount32 =  1500;
        uint _value2 =  1400;
        emit Mint(_amount32, _value2);
    }
}
