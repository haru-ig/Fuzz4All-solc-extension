pragma solidity ^0.8.0;
contract Test {
    function test1(Interface51 _x, uint256 _i) { _x.testEvent.value(_i)(_i); }
}

pragma solidity ^0.8.0;
contract Test2 {
    function test(address _a) public payable {
        _a.call{value: 3.33}('');
        _a.callvalue(1)();
    }
}

pragma solidity 0.8.0;
interface Interface521 {
   function testEvent0() external payable;
}
contract Interface531 {
   function testEvent1() external payable;
}
contract Test3 is Interface51, Interface521, Interface531 {
    function testEvent() external payable {}

    function test1(uint256 _i) public { testEvent0.value(_i)(); }
}

pragma solidity 0.8.0;
contract Test4 is Test3{
    event Mint(uint256 amount);
    event Fresh(uint256 amount);

    function test1(uint256 _i) external { testEvent0.value(_i)(); }

    function test2(uint256 _i) public {
        Mint(10);
        testEvent0.value(_i)();
    }
}
pragma solidity 0.8.0;
contract Test5 is Test4 {
    struct Store { uint256 private count; address payable[] values; }

    function test(address _a) public payable {
        Store memory storage = store[_a.balance];
        storage.values.push(_a);
        emit Fresh(storage.count);
    }

    function getBalance(address _a) public view returns (uint256) {
        return _a.balance;
    }

    Store storage store;

    constructor () { }
}
pragma solidity 0.8.0;
contract Test6 is Test5 {
    uint public count;

    function test() public {
        uint256 a;
        count++;
        while (true) {
            a = getBalance(address(this));
        }
    }
}

pragma solidity 0.8.0;
contract Test7 is Test5 {
    uint public count;

    event Mint(uint amount);

    function test() public {
        uint256 a;
        count++;
        while (true) {
            upgradeTo(address(new Test7()));
            a = getBalance(address(this));
            count -= 1;
            emit Mint(a);
        }
    }

    function upgradeTo(address _v) internal {
        uint256
