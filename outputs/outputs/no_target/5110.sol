pragma solidity ^0.8.0;
contract CXXXXX_bug21365593649 {
}
contract C49_bug19316671855 {
}
contract C82_bug7923563331 {
}
contract A31_bug24570604966 {
}
contract C70_bug32054886093 {
}
contract C200_bug41984804638 {
}
contract C61_bug5192066265 {
}
contract C48_bug51967922309 {
}
contract B34_bug65361901657 {
}
contract DXXXXXX_bug79480366512 {
}
contract A29_bug80316066035 {
}


contract C1_bug5729565298 {
    uint public uintVar;
    mapping (string => uint) public fixedVar;
    uint constant fixedConstant = 5;

    function get_vartype() public pure returns (uint) {
        return uintVar;
    }

    function get_fixedtype() public pure returns (uint) {
        return fixedVar["Fixed"];
    }

    function get_fixedconstant() public pure returns (uint) {
        return fixedConstant;
    }

    function set_uintVar(uint _uint) public {
        uintVar = _uint;
    }

    function set_fixed(string memory key, uint _fixed) public {
        fixedVar[key] = _fixed;
    }

    function get_fixedfromkey(string memory _key) public pure returns (uint) {
        return fixedVar[_key];
    }
}
