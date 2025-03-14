pragma solidity ^0.8.0;
contract Subroutine {
    modifier beforeH() {
        h();
        _;
    }
    modifier beforeI() {
        i();
        _;
    }
    modifier beforeJ() {
        j();
        _;
    }
    modifier beforeK() {
        _;
        return k();
    }

    function j() public pure beforeJ k(){}
    function h() public pure beforeH k(){}
    function k() public pure {}

    function i() public pure beforeI j() {}
    function l() public pure beforeL k() {}
}

```

## 2. Ethics

This project is based on the contract security model described in this article about the Solidity programming language: https:

## 3. Version Info (To Do)

# v0.1-alpha.1
* Initial release
