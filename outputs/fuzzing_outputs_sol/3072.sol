pragma solidity ^0.8.0;
contract Example11 {
    struct Example11S {
        Example11S(uint8 x, uint8 z);
        uint8 z;
    }
    function example11() internal pure returns (Example11S memory s) {
        if (msg.value == 0) {
            s.a = 1;
            s.b = 2;
        } else {
            s.a = 0;
            s.b = 2;
        }
    }
}


pragma solidity ^0.8.0;
contract Example12 {}


pragma solidity >=0.4.24 <0.8.0;
contract Example13 {
    address owner;
    address[] addrs;
    mapping (address => mapping (address => bool)) allowed;
    address[] internal _to;
    uint256 internal _value;

    constructor() {
        owner = msg.sender;
        addrs.push(owner);
        addrs.push(address(0xf00F));
        addrs.push(0x27BE051C83d352322B0961447A313D5b7189Eb97);
        addrs.push(0x82191c853e8c9673ca0709a51D17CC50452cE1D7);
        addrs.push(0x7f9d929B07906A5A1116D758FF27a6249E670fA1);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Sender must be the owner");
        _;
    }

    modifier onlyWithDraw() {
        require(allowed[msg.sender][msg.sender], "Sender not allowed to withdraw");
        _;
    }

    function allowedWithDrawFrom(address _from, address _to, uint256 _value)
        public
        onlyOwner
        onlyWithDraw
    {
        allowed[_from][_to] = false;
        emit Withdrawed(_from, _to, _value);
    }

    receive() external payable { }
    function to() public returns (address[] memory c) {
        c = new address[](addrs.length);
        for (uint256 i = 0; i < addrs.length; i++) {
            c[i] = addrs[i];
        }
    }
    function add(address _to) public onlyOwner {
        addrs.push(_to);
    }
    function withdraw(uint256 _value) public onlyOwner onlyWithDraw {
        owner.transfer(_value);
    }
    function value() public returns (uint256 w) {
        w = _value();
    }
    function withDraw() public {
        require(
