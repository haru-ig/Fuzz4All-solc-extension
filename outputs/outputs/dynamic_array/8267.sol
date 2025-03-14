pragma solidity ^0.8.0;
interface SimpleMath {
    function add(uint x, uint y) external pure returns (uint);
}
interface SimpleMathBase {
    function add(uint x, uint y) external pure returns (uint);
}
contract DerivedMath is SimpleMathBase, SimpleMath {
    function mult(uint x, uint y) public pure returns (uint) {
    return x * y;
    }
    function mult_base(uint x, uint y) public pure returns (uint) {
        return x * y;
}
    function mult_base(uint x, uint y) public {
        return;
    }
    function mult(uint x, uint y) public returns (uint) {
        return x * y;
}



pragma solidity ^0.8.0;
interface Transferable {
    function transferTo(address payable to, uint wad) external returns (bool);
}
contract Solidity5 {
    struct MyStruct {
        uint foo;
        uint bar;
    }
    mapping (address => uint) internal balances;
    mapping (address => mapping (address => uint)) internal allowances;
    mapping (address => bool) internal proxies;
    constructor() public payable {}
    function () external payable {}
    function transferTo(address payable to, uint wad) public {
        balances[address(this)] += wad;
        to.transfer(wad);
    }
    function allowances_foo(address owner) public view returns (uint) {
        return allowances[owner][address(this)];
}
    modifier allowances_foo_bar(address owner) {
        uint bar = allowances[owner][address(this)];
        require(bar > 0, "Invalid allowance");
        _;
    }
    function allowances_foo_bar(address owner) public allowances_foo_bar(owner) {
        balances[address(this)] -= allowances[owner][address(this
