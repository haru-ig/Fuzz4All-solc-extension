pragma solidity ^0.8.0;
contract SimpleY11 {
    mapping(uint256 => uint256) public b;

    function f(uint256 x) private pure returns (uint8){
        return 8 / 30 / 6 * (x + 1) / (x / 2) / (x * x) % 2;
    }
}

pragma solidity ^0.8.0;
contract Ethery12 {
    constructor () payable {}

    function transfer() external {
        emit Transfer(address(this), msg.sender, msg.value);
    }

    event Transfer(address indexed from, address indexed to, uint256 value);

    function transfer(address payable _to) external {
        require(_to!= address(0));
        emit Transfer(address(this), _to, msg.value);
        _to.transfer(msg.value);
    }
}
contract Example {
    event ExampleEvent;

    contract Example2C {
        emit ExampleEvent();
    }
    contract Example3D is Example2C {}

    contract Example4A {
        uint private v = 5;
        uint public w = 1;
        constructor() internal {}
        modifier onlyPrivate() {
            require(w == 1); _;
        }
        event ExampleEvent2();
        function doSomething() public {
            emit ExampleEvent2();
        }
    }

    contract Example5B {
        bytes32 private v;
        uint public w;
        modifier onlyNonZero(bytes32 _x) {
            require(bytes32(0).compareTo(_x) == 0); _;
        }
        modifier onlyNonZero2() {
            require(v!= bytes32(0)); _;
        }
        constructor() {
            w = v;
        }
        event ExampleEvent3();
        function check() public {
            require(v!= bytes32(0));
        }
        function doSomething() public onlyNonZero
