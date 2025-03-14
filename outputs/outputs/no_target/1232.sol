pragma solidity ^0.8.0;
contract Injection_02 is Injection_01
{
    string[] b;
    function set(
        uint w1,
        uint w2,
        uint w3
    )
        public
    returns( uint ) {
        return super.set(0x00000000000000000000000000000000000000000000000000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000001, w3);
    }
    function set2(
        uint w1,
        uint w2,
        uint w3
    )
        public
    returns( uint ) {
        return super.set(w1, 0x00000000000000000000000000000000000000000000000000000000000000000001, w3);
    }
    function set3(
        uint w1,
        uint w2,
        uint w3
    )
        public
    returns( uint ) {
        return super.set(w1, w2, 0x00000000000000000000000000000000000000000000000000000000000000001);
    }
    func set4(
        uint w1,
        uint w2,
        uint w3
    )
        public
    returns( uint ) {
        return super.set(w1, w2, w3);
    }
}
