pragma solidity ^0.8.0;
contract Mutator {
    modifier beforeG() {
        g();
        _;
    }
    modifier beforeh() {
        h();
        _;
    }
    function g() public beforeG beforeh {}
    function h() public beforeG beforeh {}

}


pragma solidity ^0.8.0;
contract MutatorCopy {
    modifier beforeG() {
        g();
        _;
    }
    modifier beforeh() {
        h();
        _;
    }
    function g() public beforeG beforeh {}
    function h() public beforeG beforeh {}
}


pragma solidity ^0.8.0;
contract MutatorAll {
    function g() public beforeG beforeh {}
    function h() public beforeG beforeh {}
}

contract Solidity {
    uint256 public a;
    uint256 public b;
}
pragma solidity ^0.8.0;
contract SimpleSolidity {
    function f() public {
        uint256 i = 38;
        uint256 j = add(g(), g());
        uint256 k = sub(g(), g());
        uint256 l = mul(g(), g());
        uint256 m = div(g(), g());
        uint256 n = mod(g(), g());
    }
    function g() public {
        a = add(a, add(a, a));
        b = add(b, add(a, a));
    }
    function h() public {
        uint256 i = sub(a, a);
        uint256 j = mod(b, b);
    }
    function add(uint256 a, uint256 b) public pure returns (uint256){
        require(a == 0 || b == 0);
        return (a + b);

    }
    function sub(uint256 a, uint256 b) public pure returns (uint256){

        return (a - b);

    }
    function div(uint256 a, uint256 b) public pure returns (uint256){

        if (a == 0) {
            return (b);
        } else {
            return (a / b);
        }
    }
    function mul(uint256 a, uint256 b) public pure returns (uint256){
        if (b == 0) {
            return (0);
        } else {
            return (a * b);
        }
    }
    function mod(uint256 a, uint256 b) public pure returns (uint256) {
        return
