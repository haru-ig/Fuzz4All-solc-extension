pragma solidity ^0.8.0;
contract Mutate {
    address public owner;
    Mutate2 public storage2;
    Mutate2 public constant storage2Mod = Mutate2(address(uint256(-1)));

    address private constant STORAGE_ADDRESS_VARIABLE_2 = address(uint256(-1));
    uint256 public constant STORAGE_UINT256 = uint256(uint256(0));
    address public constant STATIC_VARIABLE_ADDRESS_2 = address(uint256(-1));

    uint256 public state;
    uint256 public constant STATE_VARIABLE_2 = uint256(uint256(0));

    uint256 public constant CONSTANT_VARIABLE_2 = uint256(uint256(0));

    uint256 public variable;
    uint256 public constant VARIABLE_2 = uint256(uint256(0));

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    constructor() {
        owner = msg.sender;
    }

    function modify() public onlyOwner {
        storage2.x += 1;
    }
    function changeValue() public {
        storage2.x += 1;
    }
    function setVariable1() public {
        storage2.x += 1;
    }
    function setVariable() public {
        variable += 1;
        variable -= 1;
        variable *= 2;
        variable /= 2;
        variable %= 6;
        variable >>= 1;
        variable <<= 1;
        variable &= 6;
    }
    function getVariable() public view returns(uint256) {
        return variable;
    }
    function getVariable1() public view returns(uint256) {
        return storage2.x;
    }
    function getConstantVariable() public view returns(uint256) {
        return CONSTANT_VARIABLE_2;
    }
    modifier ifValue(uint256 value) {
        require(value == storage2.x);
        _;
    }
    function getIfElseStatement(uint256 value) public view returns(uint256) ifValue(value) {
        return value;
    }

    modifier ifAddressMod(address a) {
        require(address(uint256(-1)) == storage2Mod);
        _;
    }
    modifier ifMod(uint256 x) {
        require(x == uint256(uint256(0)));
        _;
    }

    modifier ifInitialized() {
        require(0!= state);
        _;
    }
}
