pragma solidity ^0.8.0;
import "./Semantic2Changed2.sol";
contract Semantic2Changed2Fallback {
    Semantic2Changed2.balanceChange(uint160(address(uint160(-1))));
}
contract Semantic2Changed2User {
    function a(uint160 _b) public {}
    function b() public view returns(uint160) {return 100;}
    function c() public { a(uint160(address(this).balance));}
}
contract Semantic2Changed2Owner {
    constructor() {
        Semantic2Changed2User user = new Semantic2Changed2User();
        user.a(uint160(address(this).balance));
        user.c();
    }
}
