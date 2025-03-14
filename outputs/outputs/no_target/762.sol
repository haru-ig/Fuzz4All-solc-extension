pragma solidity ^0.8.0;
contract SemanticCheckSemanticsV2 {
    function modify(uint a, uint b)
    public pure
    returns(uint)
    {
        uint c = a;
        b = add1(a);
        return c * add2(b);
    }
}

pragma solidity ^0.8.0;
contract SemanticCheckSemanticsV3 {
    bool f;
    address addr;

    constructor()
        public
    {
        f = true;
        if (f)
        {
            addr = new bytes(2).length > 2 * 3?
                    bytes(2) :
                    new address[](0);
        }
    }

    function check()
    public
    returns(address)
    {
        if (addr.value(msg.value) < 25919000000000000)
        {
            return addr;
        }
        else
        {
            return new bytes(5).length;
        }
    }
}
