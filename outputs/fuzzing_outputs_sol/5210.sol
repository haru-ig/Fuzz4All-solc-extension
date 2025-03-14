pragma solidity ^0.8.0;
contract C23 {
        function c() public payable {}
        modifier f() {
                c();
                return;
        }
}

pragma solidity ^0.8.0;
contract C23 {
        function c1() public payable {}
        function c2() public payable {}
        modifier f1() {
                c1();
                return;
        }
        modifier f2() {
                c2();
                return;
        }
}
