pragma solidity ^0.8.0;
contract Mutate30{
    address ad;
    address ed;
    uint256 x;
    uint[21] y;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function test() public view {
        assert(ad == ad);
        assert(ed == ed);
        ad = ad;
        assert(ad == ad);
        if (ad == ad) {
            ad = ad;
            assert(ad == ad);
            if (ad == ad) {
                ad.sendValue(abi.encodeWithSignature("test"));
                ad.functionWithoutReturn();
                ad.call(abi.encodeWithSignature("test"));
                ad.delegatecall(abi.encodeWithSignature("test"));
                ad.emit("dummy", true);
                ad.delegatecall(abi.encodeWithSignature("test"));
                ad.emit("dummy", false);
            }
        }
    }
}
