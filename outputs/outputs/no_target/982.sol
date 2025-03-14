pragma solidity ^0.8.0;
contract SemanticMutation13 {
    address public constant owner = 0xAFA;
    uint160 public constant TEST;
    uint64 public constant MAXVALUE = 0x400000000000000000000000000000000000000000000000000000000000000000;

    mapping(uint => address) private usermap;
    mapping(address => uint160) public addresses;

    uint public length = 0;
    uint public _lastID = 0;

    uint public indexed last_id() public returns (uint) { return 0; }

    function test1()
        public
        view
        returns (uint64)
    {
        uint160 x = USER1;
        address y = 0xDEADFEEDDEADFEEDDEADFEEDDEADFEEDDEAD;
        usermap[0] = 0xCBEEFEEFEEE;
        return 0;
    }

    function test2()
    public
    {
        uint160 x = USER1;
        address y = 0xDEADFEEDDEADFEEDDEADFEEDDEADFEEDDEAD;
        usermap[0xCBEEFEEFEEE] = 0xCBEEFEEFEEE;
    }
}
