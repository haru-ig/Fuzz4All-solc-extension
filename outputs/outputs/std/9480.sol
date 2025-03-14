pragma solidity ^0.8.0;
contract Address {
    address constant addr1 = 0xba1e32b4a96b83e2fc05f46927c9bb964208e6835;
    address public addr2 = 0xba1e32b4a96b83e2fc05f46927c9bb964208e6835;
    address internal addr3;
    address public addr4;
    function getaddr(uint num)public view returns(address x){
        require(num == 0);
        x = addr1;
    }
    function modify(uint)public{
        addr2 = 0x89212221221221221221222;
    }
    fallback()external pure{ }
    receive()external pure{ }
}
