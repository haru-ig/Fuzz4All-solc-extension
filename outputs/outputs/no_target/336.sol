pragma solidity ^0.8.0;

contract Semantics {
    function balance() external view returns(int) {
        return 0;
    }
}
contract Program {
    using Semantics for Semantics.balance;
    semantics Contract = new Semantics();
    function balance() public view returns (uint) {
        return Contract.balance();
    }
    function balance(bool b) public view returns(int) {
        return Contract.balance();
    }
}
contract Test {
    function main() public returns (int) {
        Program.balance(false);
        Program.balance(true);
    }
}
