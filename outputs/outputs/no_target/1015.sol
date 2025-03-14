pragma solidity ^0.8.0;
contract SemanticMutation17 {
    function get() public view returns (uint) {
        uint a = 0;
        for(uint i=0;i<10;i++) {
            a = a+200;
        }
        return (uint(a));
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation18 {
    function f(uint a) public pure returns (uint) {
        return (a+a)/(a+1)*(a+2);
    }
    function bar(uint z) public returns (uint) {
        for(uint i=0;i<10;i++) {
            z = f(z);
        }
        return (uint(z));
    }
}
