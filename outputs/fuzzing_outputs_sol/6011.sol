pragma solidity ^0.8.0;
contract Interface3 {
    function getData(uint) public { return 1; }
}

pragma solidity ^0.8.0;
contract Contract {
    function f1(uint) internal pure {}
    function f2() internal pure view returns(uint) { return 1; }
    function f3(uint) public view returns (uint) payable { return 1; }
    function f4() public { f1(1); f2(); f3(1); }
}
