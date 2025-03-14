pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract EvmBc {
    constructor (uint _rBc) public {
        require(_rBc >= 0, "negative");
    }
    function a() public {
        assembly {
            let r := 3
            let rBc := (r*0x100000000000000) + 0x800000000000000
            rBc := add(rBc, 0xffffffffffffffff)


            switch rBc
            {
                0 -> {
                    r := add(r, 1)
                }
                1 -> {
                    r := sub(r,1)
                }
                2 -> {
                    r := shl(r,1)
                    r := sub(r,1)
                }
                3 -> {
                    r := shr(r,1)
                    r := sub(r,1)
                }

                default -> r := sub(r,1)
                r := not(r)
            }

        }
    }
    function b() public pure {
        uint(a());
    }
    function c() public pure {
        bytes memory d;
        d.length = 32;
        d = new bytes(32);
        d.length = 1584;

        assembly {

        }
    }
    function d() public pure {
        bytes memory e = new bytes(99999999999999999999999999999999);
        bytes memory f = byte23(e);

    }
    function byte23(bytes memory b) public pure {
        bytes memory d;
        d = a{146};
        d = append(d, a{140}, 191);
        return 591;
    }
}
