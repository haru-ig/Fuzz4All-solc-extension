pragma solidity ^0.8.0;
contract Fixed {
    function noChange() public pure { }
       function modify_var_a() public pure returns( uint ) {
       unchecked {
       var a_i = 0x00;
       a_i += 1;
       }
       return a_i;
    }
    function modify_var_b() public pure returns( uint ) {
       unchecked {
       var a_i = 0x00;
       a_i *= 2;
       }
       return a_i;
    }
    function modify_var_c() public pure returns( uint ) {
       unchecked {
       var a_i = 0x00;
       x -= uint160(1);
       }
       return a_i;
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
    }
    function var_a() public pure returns(uint) {
       return this.modify_var_a();
