pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
    function f() public returns (uint){
        uint256 a = 5;
        uint256 b = 15;
        uint256 c;
        a *= b;
        return a;
    }
}


pragma solidity ^0.8.0;
contract SemanticallyEquivalent5 {
    function f() public returns (uint256 a){
        a = 5;
        return a;
    }
}


pragma solidity ^0.8.0;
contract SemanticsNotEquivalent {
    function f(uint x) public returns (uint y){
        return x;
    }
}
