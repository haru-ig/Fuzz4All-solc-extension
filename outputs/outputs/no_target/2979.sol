pragma solidity ^0.8.0;
contract third {
    event NewEvent(uint indexed a);
    struct InnerStruct {
        address a;
    }
    struct InnerStruct2 {
        string e;
    }
    uint256 public a;
    uint256 public p;
    bool public z;

    event OwnershipTransferred(address indexed owner, address indexed newOwner);
    modifier onlyOwner () {
        require(msg.sender == address(0x1122334455667788));
        _;
    }
    InnerStruct public b;
    uint256 public c;
    mapping (address => uint256)  public m;
    InnerStruct2 public f;
    mapping (bytes32 => uint)  public m2;
    InnerStruct2 public e;

    function f() public pure returns (bytes memory) {
        bytes memory b = new bytes(2);
        b[0] = 0x01;
        return b;
    }
    function e() public pure returns (bytes memory) {
        bytes memory b = new bytes(2);
        b[0] = 0x01;
        return b;
    }

    function() external payable {
    }
    function() public pure{}

    function() public { }
    function() external { }
    function() public view { }
    function() public pure view { }
    function() internal pure {}
    function() public pure {}
    function() public pure view {}
}
