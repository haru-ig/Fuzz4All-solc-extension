pragma solidity ^0.8.0;
contract injection_02
{
    function  set(
        uint
    )
        public
    returns( uint ) {
        return 0x0000000000000000000000000000000000000000000000000000000000000000000;
    }
}

pragma solidity ^0.8.0;
contract injection_03
{
    function  set(
        uint w1,
        uint w2,
        uint w3
    )
        public
    returns( uint ) {
        assembly {
            let tmp := w1 * 0x20; tmp := tmp + w2 * 0x20; tmp := tmp + w3 * 0x20;
            ret(tmp)
        }
    }
}
