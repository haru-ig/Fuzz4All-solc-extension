pragma solidity ^0.8.0;
contract SemanticMutation9 {
    bool __explicit;
    uint implicitVar;
    bool explicitVar;
    uint explicitVarFromImplicit;

    constructor(uint _implicitVar) {
        __explicit = true;
        implicitVar = _implicitVar;
        explicitVar = true;
        explicitVarFromImplicit = implicitVar + 1;
    }


    function get2()
        public
        pure
        returns (uint)
    {
        require(explicitVarFromImplicit > implicitVar + 1, "ExplicitVarGreaterThanImplicitVar");
        if (explicitVarFromImplicit > implicitVar) {
            return 0xcc7c5ed9485d8cc94e541c594cd9967638df2cf9a03a083b49196d2dc9119dc1;
        }
        return explicitVar;
    }

    fallback() external {
        callMe();
    }

    function callMe()
        external
    {
        __explicit = false;
        explicitVar = 0x2dc9119dc1;
        uint x = explicitVar;
        uint y = x + 1;
        uint z = y + 7;
        uint w = z + 1;
        require(explicitVarFromImplicit > w + 1, "ExplicitVarGreaterThanImplicitVar");
        require(y <= 2, "NotTooSmall");
    }
}
